# $OpenBSD: ldconfig.sed,v 1.2 2000/07/01 17:16:48 form Exp $
#
s,^DYNLIBDIR(\(.*\))$,@exec /sbin/ldconfig -m \1\
@unexec /sbin/ldconfig -R,

s,^NEWDYNLIBDIR(\(.*\))$,@exec /sbin/ldconfig -m \1\
@unexec /sbin/ldconfig -R,
