These are tools I use to make life easier working on Linux & Unix machines.
They are mostly, but not all by me. Where appropriate I have given credit.

### 7zrm
Archive file(s) with 7zip then remove.

### acd_func.sh
extends bash's CD to keep, display and access history of visited directory names

( from: http://geocities.com/h2428/petar/ )

### add
Add up numbers on STDIN

### arg
Like `awk '{print $1}'` on steroids

### backup
Backs up the filenames supplied to copies which include the
original file's timestamp in their name.
    
http://snippets.dzone.com/posts/show/8251

### base
Convert between radices (bases)

### colours.pl
Show the available terminal colours with their escape code.

### dec2oct
Convert a decimal number to it's IP address octets. e.g.:
          16777216 = 1.0.0.0         = 256 x 256 x 256
        4294967295 = 255.255.255.255 = (256 x 256 x 256 x 256) - 1

### dos2ux
Strip dos end-of-line characters (carriage return)

### dump
Scrape the text of a web page (requires elinks)

### epoch2gmt
Convert the time in seconds since the epoch back to its date string
(e.g. as output by +%s option to gnu date)

### exp-date
Calculate shadow file expiry date

See http://www.cyberciti.biz/faq/understanding-etcshadow-file/

### get-dir
get-dir / gd - a simple way of jumping around dirs you use all the time

- Put this in your path as get-dir
- add the section at the bottom to your .bashrc
- and call it with:
        $ gd
> or:
        $ gd [DIR_TAG]

It's nice to have this with it too:

http://www.geocities.com/h2428/petar/bash_acd.htm

http://snippets.dzone.com/posts/show/9863

### get-img-links
>    Output the img links in a web page (based on getlinks-simple)

### getlinks
>    Output the links in a web page - no HTML::TreeBuilder

### getlinks-htb
>    Output the links in a web page
>    (needs HTML::TreeBuilder - or use getlinks-simple)

### get-path
>    Validate your path & add any required directories
>    This uses only intrinsic bash commands
>    so will still work if you've lost your path :-)
>    invoke with `PATH=$(/path/to/get-path)`

### get-title
>    Output the title of a web page

### git-latest
>    Output the links to the latest version of the git RPMs
>    (based on getlinks-simple)
```
    my $url = 'http://kernel.org/pub/software/scm/git/RPMS/x86_64/';
```
>    ...which you can then use with:  `wget -Ni list`
>       or:   `for I in $(cat list); do curl -O -s $I; done`

### git-poach
>    Poach a file from another git repo

### git-purge
>    Get rid of a file from repo

### grow-how-much
>    How much to grow a filesystem by to be a certain percentage full

### html
>    Boilerplate template for quickly writing web pages

### html-list
>    Generate an HTML page listing the files supplied on STDIN
>    e.g.:
```
        ls | html-list -title="Some files..."
```
>    or
```
        getlinks https://github.com/serf/jgh-tools | html-list
```

### img-src
>    Template an HTML image link

### ini-read
>    Read values from an INI style config file

### inline
>    Invoke Perl's inline edit on a file to substitute a string with another

### ip2hex
>    IP address to HEX address converter
>    e.g. ip2hex 158.23.45.10 outputs 9E172D0A
>    from: http://perlmonks.org/?node_id=11876

### last-year
>    Passed the output of finger, it will work out what year (since 2000)
>    that day could have been.

### lineup
>    Line up the fields in the output nicely

### list-core-times
>    For Solaris
>    Show the times of the coredumps from the timestamp in their filenames

### lower
>    If called with a command line argument of a filename it will rename
>    that file to the all-lower-case version of the filename.
>    If called with no arguments it will lower all characters given on stdin.
>    (also see upper)

### lwr
>    lower text inside known html tags.
>    (useful when converting to xhtml which is all lower-case)

### magic
>    
>    http://snippets.dzone.com/posts/show/10151

### md5-gen-sums
>    Generate sums file for thin-copy

### new
>    boilerplate skeleton code for new Perl program

>    Template for a new Perl program - outputs commonly used skeleton code to save typing it again.
```
    Usage: new [-d] [-f] [-h] [-o] [-u]
      where:
          -d = Code for reading a directory (from perldoc -f readdir)
          -f = Code for reading a file.
          -h = Skip header (hash bang, warnings & strictness pragmas)
               (i.e. just generate inline snippet)
          -o = Use old (pre 5.6) Perl syntax TYPEGLOB & -w flag
               instead of Perl 5.6 or newer lexical filehandles & use warnings; pragma
          -u = This usage
      deprecated:
          -n = Was 'new' - now use '-o' for old
```

>    This saves you retyping it, making a typo, and makes sure you've not forgotten anything. 
>    http://snippets.dzone.com/posts/show/9151

### new-dir
>    Clone a directory structure and copy the permissions

### no-user
>    List files (with the uid:gid) that have no user or group

### only-in
>    find lines which are in the first file, but not in the second.

### passwd2useradd
>    Turn a line of /etc/passwd to the correct syntax to add that line with useradd.

### pc
>    Perl calculator - simple command line calculator

### petar
>    Directory of files from: http://geocities.com/h2428/petar/

### print-to-file
>    Listen to a port as a dummy printer, and save the print job to a file.
>    (used for catching postscript print jobs to a postscript file)

### putty_reg.pl
>    Create a Windows shortcut to each session stored in PuTTY

### pwgen
>    Generate random temporary passwords for resetting users passwords
>    Ugly enough that they'll want to change them to something else.

### README
>    Well done... You did what you were told! :-)

### re-hex
>    hexadecimal encode an ASCII url (i.e. with % signs)
>    (opposite of un-hex)

### read-core
>    For Solaris - run pstack, pmap and pargs on a core dump then remove it

### ren
>    rename files interactively
>    You may change the path to your editor...
>    Mine's usually /usr/bin/vim - but /bin/vi is often symlinked to that if it's installed...
>    http://snippets.dzone.com/posts/show/7955

### rot13
>    perform simple rot13 encryption

### sci
>    A pair of scissors... draw a perforated line to cut along...
>    You can call this from within vi with <ESC>!!sci<Return> to get:
>    8< - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
>    Useful in email bodies around examples etc...

### sort-ip
>    The fastest way I know of to numerically sort a list of IP addresses

### ssh-agent
>    Re-use existing ssh-agent
>    If you have an ssh-agent running, work out its variables & set it as your environment.
>    If you don't have one running, start a new one. Add a key if there isn't one loaded.
>    from:
>    http://snippets.dzone.com/posts/show/10897
>    http://snippets.dzone.com/posts/show/8187
>    ...and some tweaking

### ssh-ck
>    Try to figure out why an SSH login is failing.

### stat
>    stat a file and display the details

### thin-copy
>    Remove files that have been successfully copied to another location.
>    I use it something like this:
```
        $ cp -rp orig_dir copy_dir
        $ cd orig_dir
        $ find * -type f -exec md5sum {} \; > orig
        $ cd ../copy_dir
        $ find * -type f -exec md5sum {} \;  > ../orig_dir/copy
        $ cd ../orig_dir
        $ thin-copy
```
>    http://snippets.dzone.com/posts/show/6950

### thin-dir
>    remove files from another directory
>    Run with:
```
        thin-dir (path_to_other_directory)
```
>    It will prompt you to remove any files in this directory that are a copy of a file in the other directory.
>    (i.e. have the same name and md5sum)
>    http://snippets.dzone.com/posts/show/7869

### thin-dirr
>    Same as thin-dir but works recursively.
>    TODO: This was a quick hack on thin-dir to test the concept.
>    Look at integrating this into thin-dir & calling it with -r

### thin-down
>    remove files
>    Removes duplicate files from subdirectories.
>    http://snippets.dzone.com/posts/show/7871

### thin-dup
>    remove duplicate files
>    This compares the md5sum of files and prompts to remove copies of files that are duplicated.
>    http://snippets.dzone.com/posts/show/7868

### thin-zero
>    Remove (with confirmation) any empty (zero byte) files in this directory.

### thread-count
>    Count the threads for any processes with more than one thread.

### tick
>    Draw a ticking clock hand, like: '`/ - \ |`' as per Sun 'processing' prompt
>    This can have a message after it.
>    Useful as a lightweight SSH keepalive by generating constant traffic
>    (i.e. run it in your terminal while you're not interacting with it)

### title-case
>    Conver first letter of words to upper case and the rest to lower case.

### total-size
>    Add up the size of all the files in the output of ls -l

### un-hex
>    Convert a hexadecimal encoded url (i.e. with % signs) to ASCII

### un-unicode
>    Very rudimentary convertor to strip unicode data to ASCII

### upper
>    If called with a command line argument of a filename it will rename
>    that file to the all-upper-case version of the filename.
>    If called with no arguments it will upper all characters given on stdin.
>    (also see lower)

### ux2dos
>    Add DOS carriage returns (and END OF FILE marker) to Unix ASCII file

### viw
>    Invoke vi on the given command (script!) in your path

### web-get
>    Pure perl replacement for wget & cURL for boxes that can't have them    

### yest
>    Print Yesterday's date, the same output as:
```
    TZ=GMT+24 date +%Y%m%d
```

