TODO: (maybe) find a way to pass 'non-production' status to scripts that
      get sourced by R to satisfy dependencies... or perhaps non-production
       should not be that convenient, perhaps it should be manually turned
       on and off for each file and it's better not to inherit it.
       
TODO: function to write out .trail as a JSON or XML file (to accompany
       non-rdata saveouts)
       
TODO: modify tread() to check for the existance of a trail flat-file as above
       and read it if there is one. Then, treat it the same way
       that a .trail from a loaded rdata file.
       
TODO: modify tread() to see if the file being read is part of the repo and
       document that fact, perhaps by the type being 'versioned-file' instead
       of 'file'

TODO: a twrite() function that is the inverse of tread() and creates an
       accompanying flat-file of trail.

TODO: have gitstamp only do the non-production message if the non-production
       argument is TRUE _and_ the file isn't checked in

TODO: if tscript finds that the specified script is not part of the git repo
       then record the type as 'unversioned-script' rather than 'script'
       and save an md5 hash instead of a git-provided hash

TODO: [priority] ~~possibly rename tscript() to tself() and~~ have a separate
       tsource() function specifically to wrap source

TODO: [priority] check if a MYSTERY_FILE with a matching hash already exists
       and if it does, reuse the name

The below is an example of how a script can find out its own file-name
(except if it is being interactively run)

    currentscript <- parent.frame(2)$ofile;
    if(is.null(currentscript)) currentscript <- 'RUN_FROM_INTERACTIVE_SESSION';
