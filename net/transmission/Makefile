# $OpenBSD: Makefile,v 1.134 2019/07/12 20:48:50 sthen Exp $

COMMENT-main=	BitTorrent command line and daemon client
COMMENT-gtk=	BitTorrent client with GTK+ interface
COMMENT-qt=	BitTorrent client with Qt interface

NOT_FOR_ARCHS-gtk= sparc64
NOT_FOR_ARCHS-qt= sparc64

VER=		2.94
DISTNAME=	transmission-${VER}
PKGNAME-main=	transmission-${VER}
PKGNAME-gtk=	transmission-gtk-${VER}
PKGNAME-qt=	transmission-qt-${VER}
CATEGORIES=	net
HOMEPAGE=	https://transmissionbt.com/
MAINTAINER=	Josh Grosse <josh@jggimi.net>
REVISION-gtk=	4
REVISION-qt=	4
REVISION-main=	2

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/transmission/transmission-releases/raw/master/
EXTRACT_SUFX=	.tar.xz

MULTI_PACKAGES=	-main -gtk -qt

ONLY_FOR_ARCHS-qt=	${MODGCC4_ARCHS} ${CLANG_ARCHS}

COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c


PSEUDO_FLAVORS=	no_gtk no_qt
FLAVOR?=

.include <bsd.port.arch.mk>

WANTLIB-common=	c crypto curl event_core event_extra m miniupnpc>=2.0 \
		natpmp pthread ssl z intl
WANTLIB-main=	${WANTLIB-common} nghttp2 iconv
WANTLIB-gtk=	${WANTLIB-common} X11 Xcomposite Xcursor Xdamage \
		Xext Xfixes Xi Xinerama Xrandr Xrender \
		atk-1.0 atk-bridge-2.0 atspi cairo cairo-gobject \
		dbus-1 expat ffi fontconfig freetype fribidi \
		gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 graphite2 gthread-2.0 gtk-3 \
		harfbuzz pango-1.0 pangoft2-1.0 \
		pangocairo-1.0 pixman-1 png pcre xcb \
		xcb-render xcb-shm epoxy nghttp2 iconv
WANTLIB-qt=	${WANTLIB-common} ${MODQT_WANTLIB} \
		GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5Widgets \
		fontconfig freetype $(COMPILER_LIBCXX)

MODULES+=	textproc/intltool

LIB_DEPENDS-common=devel/gettext,-runtime \
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
		x11/gtk+3,-guic
RUN_DEPENDS-qt=	${PKGNAME-main}:${BUILD_PKGPATH} \
		devel/desktop-file-utils

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	--disable-shared \
		--enable-cli \
		--enable-external-natpmp

# -I$(top_builddir)/third-party is required, but configure fails to
# set it if we use external miniupnp libs.

CONFIGURE_ENV=	CPPFLAGS="-I${WRKSRC}/third-party -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${BUILD_PACKAGES:M-qt}
MODULES+=		devel/qmake x11/qt5
COMPILER_LANGS +=	c++
# avoid setting LINK=
MODQT5_USE_CXX11=	No
MODQMAKE_PROJECTS=	qt/qtr.pro
CONFIGURE_STYLE+=	qmake
SEPARATE_BUILD=		No
MODQMAKE_INSTALL_ROOT=	${PREFIX}
.endif

.if !${BUILD_PACKAGES:M-gtk}
CONFIGURE_ARGS+=--without-gtk
.endif

pre-patch:
	@cd ${WRKSRC}/third-party/libutp; perl -pi -e 's/\r$$//' *.h *.cpp

.if ${BUILD_PACKAGES:M-qt}
post-build:
	${MODQMAKE_build}

post-install:
	${MODQMAKE_install}
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/qt/transmission-qt.desktop \
	    ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/qt/icons/transmission.png \
	    ${PREFIX}/share/pixmaps/transmission-qt.png
.endif

.include <bsd.port.mk>
