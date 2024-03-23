# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

FULL_VERSION =		3.11.8
SHARED_LIBS =		python3.11 0.0
VERSION_SPEC =		>=3.11,<3.12
PORTROACH =		limit:^3\.11

REVISION =		0
REVISION-main =		1

CONFIGURE_ENV +=	ac_cv_working_openssl_hashlib=yes \
	TCLTK_CFLAGS="-I${MODTCL_INCDIR} -I${MODTK_INCDIR} -I${X11BASE}/include" \
	TCLTK_LIBS="-L${X11BASE}/lib -l${MODTCL_LIB} -l${MODTK_LIB} -lpthread"

.include <bsd.port.mk>
