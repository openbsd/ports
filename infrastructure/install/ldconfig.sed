# $OpenBSD: ldconfig.sed,v 1.1 2000/06/30 21:39:36 espie Exp $
#
s,^DYNLIBDIR(\(.*\))$,@exec /sbin/ldconfig -m \1\
@unexec /sbin/ldconfig -m \1,

s,^NEWDYNLIBDIR(\(.*\))$,@exec /sbin/ldconfig -m \1\
@unexec /sbin/ldconfig -m \1,
