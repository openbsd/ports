# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

FULL_VERSION =		2.7.18
SHARED_LIBS =		python2.7 0.0
VERSION_SPEC =		>=2.7,<2.8
PORTROACH =		limit:^2\.7

REVISION-main =		13
REVISION-idle =		1
REVISION-tests =	1
REVISION-bsddb =	0
REVISION-gdbm =		0
REVISION-tkinter =	1
REVISION-tools =	0

AUTOCONF_VERSION =	2.69
CONFIGURE_ARGS +=	--with-ensurepip=no
CONFIGURE_ENV +=	ac_cv_opt_olimit_ok=no

.include <bsd.port.mk>
