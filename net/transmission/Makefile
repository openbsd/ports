# $OpenBSD: Makefile,v 1.22 2008/03/17 18:38:20 naddy Exp $

COMMENT-main=	lightweight BitTorrent command line and daemon client
COMMENT-gui=	lightweight BitTorrent client with graphical interface

VER=		1.06
DISTNAME=	transmission-${VER}
PKGNAME-main=	transmission-${VER}
PKGNAME-gui=	transmission-gui-${VER}
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

PSEUDO_FLAVORS=	no_gui
FLAVOR?=

MULTI_PACKAGES=	-main

WANTLIB=	c crypto m pthread
WANTLIB-main=	${WANTLIB}

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-shared --without-wx
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		OPENSSL_CFLAGS="-I/usr/include" \
		OPENSSL_LIBS="-lcrypto"
LIBTOOL_FLAGS=	--tag=disable-shared
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} ${WRKSRC}/third-party/libevent

.if ${FLAVOR:L:Mno_gui}
CONFIGURE_ARGS+=--without-gtk
.else
MULTI_PACKAGES+=-gui
MODULES=	devel/gettext
WANTLIB-gui=	${WANTLIB} X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 pango-1.0 pangoft2-1.0 pangocairo-1.0 png pcre z
LIB_DEPENDS=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2
LIB_DEPENDS-main=
RUN_DEPENDS-main=
RUN_DEPENDS-gui=:${PKGNAME-main}:net/transmission,-main \
		::devel/desktop-file-utils ${RUN_DEPENDS}
USE_X11=	Yes
.endif

.include <bsd.port.mk>
