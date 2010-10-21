# $OpenBSD: Makefile,v 1.58 2010/10/21 21:52:51 naddy Exp $

COMMENT-main=	lightweight BitTorrent command line and daemon client
COMMENT-gtk=	lightweight BitTorrent client with GTK+ interface

VER=		2.11
DISTNAME=	transmission-${VER}
PKGNAME-main=	transmission-${VER}
PKGNAME-gtk=	transmission-gtk-${VER}
CATEGORIES=	net
HOMEPAGE=	http://www.transmissionbt.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://mirrors.m0k.org/transmission/files/
EXTRACT_SUFX=	.tar.bz2

PSEUDO_FLAVORS=	no_gtk
FLAVOR?=

MULTI_PACKAGES=	-main

WANTLIB=	c crypto curl event eventextra idn m pthread ssl z
WANTLIB-main=	${WANTLIB}

MODULES=	devel/gettext textproc/intltool
LIB_DEPENDS=	::net/curl \
		::devel/libeventextra

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-shared \
		--disable-silent-rules \
		--disable-libnotify \
		--disable-libappindicator \
		--disable-libcanberra \
		--disable-gconf2
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBEVENT_LIBS="-leventextra -levent" \
		OPENSSL_CFLAGS="-I/usr/include" \
		OPENSSL_LIBS="-lcrypto"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}

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
LIB_DEPENDS+=	::x11/gtk+2 \
		::x11/dbus-glib
RUN_DEPENDS-gtk=:${PKGNAME-main}:net/transmission,-main \
		::devel/desktop-file-utils \
		:gamin-*:sysutils/gamin,-server,no_python
USE_X11=	Yes
.endif

.include <bsd.port.mk>
