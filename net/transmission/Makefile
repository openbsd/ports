# $OpenBSD: Makefile,v 1.68 2011/09/23 09:12:32 naddy Exp $

ONLY_FOR_ARCHS-qt= ${GCC4_ARCHS}

COMMENT-main=	lightweight BitTorrent command line and daemon client
COMMENT-gtk=	lightweight BitTorrent client with GTK+ interface
COMMENT-qt=	lightweight BitTorrent client with Qt interface

VER=		2.33
DISTNAME=	transmission-${VER}
PKGNAME-main=	transmission-${VER}
PKGNAME-gtk=	transmission-gtk-${VER}
PKGNAME-qt=	transmission-qt-${VER}
CATEGORIES=	net
HOMEPAGE=	http://www.transmissionbt.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.m0k.org/transmission/files/
EXTRACT_SUFX=	.tar.bz2

PSEUDO_FLAVORS=	no_gtk no_qt
FLAVOR?=

MULTI_PACKAGES=	-main

WANTLIB=	c crypto curl event_core event_extra idn m pthread ssl z
WANTLIB-main=	${WANTLIB}

MODULES=	devel/gettext textproc/intltool
LIB_DEPENDS=	net/curl \
		devel/libevent2

BUILD_DEPENDS=	archivers/gtar
TAR=		${LOCALBASE}/bin/gtar

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-shared \
		--disable-libnotify \
		--disable-libappindicator \
		--disable-libcanberra
# unaligned accesses throughout
CONFIGURE_ARGS+=--disable-utp

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mno_gtk}
CONFIGURE_ARGS+=--disable-gtk
.else
MULTI_PACKAGES+=-gtk
WANTLIB-gtk=	${WANTLIB} X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender Xxf86vm GL atk-1.0 cairo \
		dbus-1 dbus-glib-1 drm expat fontconfig freetype \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 pango-1.0 pangoft2-1.0 \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 \
		expat fontconfig freetype gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 pango-1.0 pangoft2-1.0 \
		pangocairo-1.0 pixman-1 png pcre pthread-stubs xcb \
		xcb-render xcb-shm
LIB_DEPENDS+=	x11/gtk+2 \
		x11/dbus-glib
RUN_DEPENDS-gtk=${PKGNAME-main}:net/transmission,-main \
		devel/desktop-file-utils \
		sysutils/gamin,-server,no_python
.endif

.include <bsd.own.mk>

.if !${FLAVOR:L:Mno_qt}
MULTI_PACKAGES+=-qt
.endif

.if ${COMPILER_VERSION:L:Mgcc4*} && !${FLAVOR:L:Mno_qt}
LIB_DEPENDS+=	x11/qt4
WANTLIB-qt=	${WANTLIB} QtCore QtDBus QtGui QtNetwork QtXml \
		expat fontconfig freetype stdc++
RUN_DEPENDS-qt=	${PKGNAME-main}:net/transmission,-main \
		devel/desktop-file-utils

post-build:
	cd ${WRKSRC}/qt; qmake4 qtr.pro; make ${MAKE_FLAGS}

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
