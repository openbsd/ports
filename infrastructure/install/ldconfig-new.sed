# $OpenBSD: ldconfig-new.sed,v 1.3 2000/12/16 23:25:36 espie Exp $
#
s,^DYNLIBDIR(\(.*\))$,@exec /sbin/ldconfig -m \1\
@unexec /sbin/ldconfig -R,
#
# This needs an ldconfig with -U support
s,^NEWDYNLIBDIR(\(.*\))$,@exec /sbin/ldconfig -m \1\
@exec echo "Remember to add \1 to shlib_dirs in /etc/rc.conf"\
@unexec /sbin/ldconfig -U \1\
@unexec echo "Remember to remove \1 from shlib_dirs in /etc/rc.conf",
