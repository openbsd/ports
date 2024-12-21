# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

FULL_VERSION =		3.12.8
SHARED_LIBS =		python3.12 0.0
VERSION_SPEC =		>=3.12,<3.13
PORTROACH =		limit:^3\.12

AUTOCONF_VERSION =	2.71

CONFIGURE_ENV +=	ac_cv_working_openssl_hashlib=yes \
	TCLTK_CFLAGS="-I${MODTCL_INCDIR} -I${MODTK_INCDIR} -I${X11BASE}/include" \
	TCLTK_LIBS="-L${X11BASE}/lib -l${MODTCL_LIB} -l${MODTK_LIB} -lpthread" \
	ac_cv_lib_panelw_update_panels=yes \
	PANEL_LIBS="-lncursesw -lpanelw"

# disable bundled pip in favour of the version from devel/py-pip
CONFIGURE_ARGS +=      --with-ensurepip=no

.include <bsd.port.mk>
