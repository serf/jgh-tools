#!/usr/bin/perl
#
# John Harrison
# Create a Windows shortcut to each session stored in PuTTY
#
use warnings;
use strict;

use Win32::TieRegistry( Delimiter => '/' );
use Win32::OLE;

my $wsh = new Win32::OLE 'WScript.Shell';

my $sessions_key = "HKEY_CURRENT_USER/Software/SimonTatham/PuTTY/Sessions";

my $sessions = $Registry->{$sessions_key}
    or die "$0: can't open $sessions_key: $^E\n";

my ($output_dir, $match_file) = (shift,shift);
$match_file = '/dev/null' if ! $match_file;
$output_dir = '.' if ! $output_dir;

my ($match, $unused);
open (my $match_fh, "$match_file") || die "Can't read '$match_file': $!\n";
while (defined (my $line = <$match_fh>)) {

    #
    # Pattern is:
    #  /<regexp>/ : link/path
    #
    chomp $line;

    if ( $line =~ m{^\s*\/(.*)/\s*:\s*(.*?)\s*$} ) {

        push @$match, [$1, $2];
        $unused->{$1} = undef;

    }
    elsif ( $line =~ /^#/ ) {

        next;

    }
    elsif ( $line =~ /^\s*$/ ) {

        next;

    }
    else {

        print "Found junk [$line] in mask file.\n";

    }

}
close $match_fh;

sub write_link ($$) {

    my ($session, $path) = (shift,shift);

    my $mk_path = "$output_dir/";

    for my $dir ( split '/', $path ) {

        $mk_path .= "$dir";

        if ( ! -d "$mk_path" ) {

            mkdir "$mk_path" || die "Can't mkdir '$mk_path': $!\n";

        }

        $mk_path .= '/';

    }

    $mk_path =~ s{/}{\\}g;

    my $shcut = $wsh->CreateShortcut("$mk_path\\$session.lnk")
        or die "Can't write shortcut '$mk_path\\$session.lnk': $!\n";

    $shcut->{'TargetPath'} = qq{"Program Files\\PuTTY\\putty.exe"};
    $shcut->{'Description'} = "PuTTY $session";
    $shcut->{'Arguments'} = qq{-load "$session"},
    $shcut->Save;

    return;

}

SESSION: for my $session ( sort keys %$sessions ) {

    $session =~ s{/$}{};
    $session =~ s{%20}{ }g;

    for my $m ( @$match ) {

        if ( $session =~ /$m->[0]/ ) {

            write_link $session, $m->[1];
            delete $unused->{$m->[0]};
            next SESSION;

        }

    }

}

open (my $unused_fh, "> $match_file.unused") || die "Can't write '$match_file.unused': $!\n";
for my $mask ( sort keys %$unused ) {
    print $unused_fh "$mask\n";
}
close $unused_fh;

=example masks

Create a masks file with the following syntax:

/\.com$/ : dotcom
/\.co\.nz$/ : countries/nz

=cut

