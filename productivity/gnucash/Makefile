# $OpenBSD: Makefile,v 1.77 2015/06/29 06:12:50 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		personal and small-business financial-accounting software

GNOME_PROJECT =		gnucash
GNOME_VERSION =		2.6.7
EXTRACT_SUFX =		.tar.bz2

SHARED_LIBS +=  gnc-qof              2.0      # 1.4
SHARED_LIBS +=  gnc-core-utils       0.0      # unknown
SHARED_LIBS +=  gnc-module           0.0      # unknown
SHARED_LIBS +=  gnc-backend-xml-utils 0.0     # unknown
SHARED_LIBS +=  gnc-backend-sql      0.0      # unknown
SHARED_LIBS +=  gnc-gnome            0.0      # unknown
SHARED_LIBS +=  gncmod-qif           0.0      # unknown
SHARED_LIBS +=  gnc-business-ledger  0.0      # unknown

CATEGORIES =		productivity

HOMEPAGE =		http://www.gnucash.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt art_lgpl_2 atk-1.0 bz2
WANTLIB += c cairo dbi dbus-1 dbus-glib-1 enchant expat ffi fontconfig
WANTLIB += freetype gailutil gbm gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gnome-keyring gnomecanvas-2
WANTLIB += gobject-2.0 goffice-0.8 gpg-error graphite2 gsf-1 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-x11-2.0
WANTLIB += guile harfbuzz harfbuzz-icu icudata icui18n icuuc javascriptcoregtk-1.0
WANTLIB += jpeg ltdl lzma m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs secret-1 soup-2.4
WANTLIB += sqlite3 stdc++ webkitgtk-1.0 webp xcb xcb-render xcb-shm
WANTLIB += xml2 xslt z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gnucash/}

DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			gnucash-docs-${GNOME_VERSION}.tar.gz

MODULES =		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache yelp

BUILD_DEPENDS =		databases/libdbi-drivers,-sqlite3
RUN_DEPENDS =		databases/libdbi-drivers,-sqlite3

# gnc-fq-helper(1)
RUN_DEPENDS +=		converters/p5-DateManip \
			misc/p5-Finance-Quote

LIB_DEPENDS =		databases/libdbi \
			devel/goffice08 \
			lang/guile \
			www/webkit \
			x11/gnome/libgnome-keyring \
			x11/gnome/libgnomecanvas

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-dbi-dbd-dir=${LOCALBASE}/lib/dbd \
			--with-xdg-data-dirs=${LOCALBASE}/share

# --disable-ofx until libofx/libsp is fixed to work with .so
CONFIGURE_ARGS +=	--disable-doxygen \
			--disable-ofx

MODGNOME_CPPFLAGS =	-I${X11BASE}/include

FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/
DOC_DIR =		${WRKDIR}/gnucash-docs-${GNOME_VERSION}

# XXX prefer guile1: guile2 segfaults during build when using dpb(1)
# XXX make sure guile2 headers are picked up first (over guile1);
# cannot use CPPFLAGS/CFLAGS since they get appended last
#MAKE_FLAGS +=		CC="${CC} -I${LOCALBASE}/include/guile/2.0"
pre-configure:
	perl -pi -e 's,guile-2.0,guile-99.99,g' ${WRKSRC}/configure
	
post-configure:
	cd ${DOC_DIR} && ${SETENV} ${CONFIGURE_ENV} /bin/sh ./configure

post-build:
	cd ${DOC_DIR} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS}

post-install:
	cd ${DOC_DIR} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} install
	rm ${PREFIX}/lib/gnucash/*.{a,la}
# requires hardcoded gnucash sources path to work
	rm ${PREFIX}/bin/gnucash-valgrind

.include <bsd.port.mk>
