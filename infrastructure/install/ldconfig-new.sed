# $OpenBSD: ldconfig-new.sed,v 1.1 2000/06/30 21:39:36 espie Exp $
#
s,^DYNLIBDIR(\(.*\))$,@exec /sbin/ldconfig -m \1\
@unexec /sbin/ldconfig -m \1,
#
# This needs an ldconfig with -U support
s,^NEWDYNLIBDIR(\(.*\))$,@exec /sbin/ldconfig -m \1\
@unexec /sbin/ldconfig -U \1,
