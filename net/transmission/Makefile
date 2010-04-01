# $OpenBSD: Makefile,v 1.52 2010/04/01 22:16:29 naddy Exp $

COMMENT-main=	lightweight BitTorrent command line and daemon client
COMMENT-gui=	lightweight BitTorrent client with graphical interface

VER=		1.92
DISTNAME=	transmission-${VER}
PKGNAME-main=	transmission-${VER}
PKGNAME-gui=	transmission-gui-${VER}p0
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

PSEUDO_FLAVORS=	no_gui
FLAVOR?=

MULTI_PACKAGES=	-main

WANTLIB=	c crypto idn m pthread ssl z
WANTLIB-main=	${WANTLIB}

MODULES=	devel/gettext textproc/intltool
LIB_DEPENDS=	curl.>=14::net/curl

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
AUTOCONF_VERSION=2.63
AUTOCONF=	autoconf -I m4
CONFIGURE_STYLE=autoconf no-autoheader
CONFIGURE_ARGS=	--disable-shared \
		--disable-silent-rules \
		--disable-libnotify \
		--disable-libappindicator \
		--disable-libcanberra \
		--disable-gconf2
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		OPENSSL_CFLAGS="-I/usr/include" \
		OPENSSL_LIBS="-lcrypto"
LIBTOOL_FLAGS=	--tag=disable-shared
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/third-party/libevent

.if ${FLAVOR:L:Mno_gui}
CONFIGURE_ARGS+=--disable-gtk
.else
MULTI_PACKAGES+=-gui
WANTLIB-gui=	${WANTLIB} X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 \
		expat fontconfig freetype gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gthread-2.0 pango-1.0 pangoft2-1.0 \
		pangocairo-1.0 pixman-1 png pcre pthread-stubs xcb
LIB_DEPENDS+=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2 \
		dbus-glib-1::x11/dbus-glib
LIB_DEPENDS-main=${MODGETTEXT_LIB_DEPENDS} \
		curl.>=13::net/curl
RUN_DEPENDS-gui=:${PKGNAME-main}:net/transmission,-main \
		::devel/desktop-file-utils \
		:gamin-*:sysutils/gamin,-server,no_python
USE_X11=	Yes
.endif

.include <bsd.port.mk>
