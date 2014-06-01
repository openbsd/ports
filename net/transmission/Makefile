# $OpenBSD: Makefile,v 1.94 2014/06/01 11:37:06 naddy Exp $

COMMENT-main=	BitTorrent command line and daemon client
COMMENT-gtk=	BitTorrent client with GTK+ interface
COMMENT-qt=	BitTorrent client with Qt interface

VER=		2.83
DISTNAME=	transmission-${VER}
PKGNAME-main=	transmission-${VER}
PKGNAME-gtk=	transmission-gtk-${VER}
PKGNAME-qt=	transmission-qt-${VER}
CATEGORIES=	net
HOMEPAGE=	http://www.transmissionbt.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.transmissionbt.com/files/
EXTRACT_SUFX=	.tar.xz

MULTI_PACKAGES=	-main -gtk -qt

ONLY_FOR_ARCHS-qt=${GCC4_ARCHS}

PSEUDO_FLAVORS=	no_gtk no_qt
FLAVOR?=

.include <bsd.port.arch.mk>

WANTLIB-common=	c crypto curl event_core event_extra m miniupnpc>=2.0 \
		natpmp pthread ssl z ${MODGETTEXT_WANTLIB}
WANTLIB-main=	${WANTLIB-common} idn
WANTLIB-gtk=	${WANTLIB-common} ICE SM X11 Xcomposite Xcursor Xdamage \
		Xext Xfixes Xi Xinerama Xrandr Xrender \
		atk-1.0 atk-bridge-2.0 atspi cairo cairo-gobject \
		dbus-1 expat ffi fontconfig freetype \
		gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 graphite2 gthread-2.0 gtk-3 \
		harfbuzz idn pango-1.0 pangoft2-1.0 \
		pangocairo-1.0 pixman-1 png pcre pthread-stubs xcb \
		xcb-render xcb-shm
WANTLIB-qt=	${WANTLIB-common} ${MODQT_WANTLIB} \
		lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtXml \
		ICE SM X11 Xext Xi Xinerama Xrender \
		fontconfig freetype stdc++

MODULES=	devel/gettext textproc/intltool
.if ${BUILD_PACKAGES:M-qt}
MODULES+=	x11/qt4
.endif

LIB_DEPENDS-common=${MODGETTEXT_LIB_DEPENDS} \
		devel/libevent2 \
		net/curl \
		net/miniupnp/libnatpmp \
		net/miniupnp/miniupnpc>=1.9
LIB_DEPENDS-main=${LIB_DEPENDS-common}
LIB_DEPENDS-gtk=${LIB_DEPENDS-common} \
		x11/gtk+3
LIB_DEPENDS-qt=	${LIB_DEPENDS-common} \
		${MODQT_LIB_DEPENDS}

RUN_DEPENDS-gtk=${PKGNAME-main}:${BUILD_PKGPATH} \
		devel/desktop-file-utils \
		x11/gtk+2,-guic
RUN_DEPENDS-qt=	${PKGNAME-main}:${BUILD_PKGPATH} \
		devel/desktop-file-utils

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-shared \
		--enable-external-natpmp
# unaligned accesses throughout
CONFIGURE_ARGS+=--disable-utp

# -I$(top_builddir)/third-party is required, but configure fails to
# set it if we use external miniupnp libs.

CONFIGURE_ENV=	CPPFLAGS="-I${WRKSRC}/third-party -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

QMAKE_ARGS=	QMAKE_CXX="${CXX}" \
		QMAKE_CXXFLAGS="${CXXFLAGS}"

.if !${BUILD_PACKAGES:M-gtk}
CONFIGURE_ARGS+=--without-gtk
.endif

pre-patch:
	@cd ${WRKSRC}/third-party/libutp; perl -pi -e 's/\r$$//' *.h *.cpp

.if ${BUILD_PACKAGES:M-qt}
post-build:
	cd ${WRKSRC}/qt; qmake4 ${QMAKE_ARGS} qtr.pro; make ${MAKE_FLAGS}

post-install:
	cd ${WRKSRC}/qt; make ${MAKE_FLAGS} install INSTALL_ROOT=${PREFIX} \
	    INSTALL_FILE="${INSTALL_DATA}" \
	    INSTALL_PROGRAM="${INSTALL_PROGRAM}"
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/qt/transmission-qt.desktop \
	    ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/qt/icons/transmission.png \
	    ${PREFIX}/share/pixmaps/transmission-qt.png
.endif

.include <bsd.port.mk>
