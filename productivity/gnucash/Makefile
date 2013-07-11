# $OpenBSD: Makefile,v 1.56 2013/07/11 19:17:10 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	personal and small-business financial-accounting software

GNOME_PROJECT =	gnucash
GNOME_VERSION =	2.4.11
DOC_VERSION = 	2.2.0
EXTRACT_SUFX =	.tar.bz2
REVISION =	3

SHARED_LIBS +=  gnc-qof              1.4      # 1.4
SHARED_LIBS +=  gnc-core-utils       0.0      # unknown
SHARED_LIBS +=  gnc-module           0.0      # unknown
SHARED_LIBS +=  gnc-backend-xml-utils 0.0      # unknown
SHARED_LIBS +=  gnc-backend-sql      0.0      # unknown
SHARED_LIBS +=  gnc-business-ledger  0.0      # unknown
SHARED_LIBS +=  gnc-gnome            0.0      # unknown
SHARED_LIBS +=  gncmod-qif           0.0      # unknown

CATEGORIES =	productivity

HOMEPAGE =	http://www.gnucash.org/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB += atk-1.0 bonobo-2 bonobo-activation bonoboui-2 bz2 c
WANTLIB += cairo canberra crypto dbi dbus-1 dbus-glib-1 enchant
WANTLIB += expat ffi fontconfig freetype gailutil gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2
WANTLIB += gobject-2.0 goffice-0.8 gpg-error graphite2 gsf-1 gthread-2.0
WANTLIB += gtk-x11-2.0 gtkhtml-3.14 guile harfbuzz ltdl m ogg
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png popt pthread pthread-stubs ssl stdc++ util vorbis
WANTLIB += vorbisfile xcb xcb-render xcb-shm xml2 z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gnucash/} \
		${HOMEPAGE}pub/gnucash/sources/stable/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		gnucash-docs-${DOC_VERSION}.tar.gz

MODULES =	devel/gettext \
		x11/gnome \
		devel/gconf2

MODGNOME_DESKTOP_FILE =	Yes
MODGNOME_ICON_CACHE =	Yes
MODGCONF2_SCHEMAS_DIR = gnucash
MODGNOME_TOOLS = 	yelp

BUILD_DEPENDS =	devel/slib-guile
RUN_DEPENDS =	devel/slib-guile
LIB_DEPENDS =	databases/libdbi \
		devel/goffice08 \
		lang/guile \
		www/gtkhtml3 \
		x11/gnome/libgnomeui

CONFIGURE_STYLE =	gnu
# --disable-ofx until libofx/libsp is fixed to work with .so
CONFIGURE_ARGS +=	--disable-doxygen \
			--disable-ofx
MODGNOME_CPPFLAGS =	-I${X11BASE}/include
# configure checks for pthread_mutex_init(3)
MODGNOME_LDFLAGS =	-pthread

# see patch-src_core-utils_gnc-path_c
CFLAGS +=	-DGCONFDIR='\"/var/db\"'

FAKE_FLAGS =	sysconfdir=${PREFIX}/share/examples/

# Steps to build the docs.
DOC_DIR =		${WRKDIR}/gnucash-docs-${DOC_VERSION}
post-configure:
	cd ${DOC_DIR} && ${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure

post-build:
	cd ${DOC_DIR} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

post-install:
	cd ${DOC_DIR} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} install

.include <bsd.port.mk>
