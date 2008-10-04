set path = (/sbin /bin /usr/sbin /usr/local/bin /usr/games /usr/bin \
/usr/local/sbin /usr/X11R6/bin) 

set _h=`hostname | tr '[A-Z]' '[a-z]'`
setenv CVSROOT cvs.openbsd.org:/cvs
setenv CVS_RSH ssh
if ($_h == cvs.openbsd.org) then
   setenv CVSROOT /cvs
endif
