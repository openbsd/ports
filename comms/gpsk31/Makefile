# $OpenBSD: Makefile,v 1.31 2019/07/12 20:43:47 sthen Exp $

COMMENT=	gtk PSK31 send and receive

DISTNAME=	gpsk31-0.3
REVISION=	18
CATEGORIES=	comms hamradio

HOMEPAGE=	http://www.qsl.net/pg4i/linux/gpsk31.html

# GPLv2
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/desktop-file-utils
LIB_DEPENDS=		x11/gtk+2

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gthread-2.0
WANTLIB += gobject-2.0 iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread sndio ${COMPILER_LIBCXX} xcb xcb-render
WANTLIB += z gtk-x11-2.0 gdk_pixbuf-2.0 gdk-x11-2.0 GL
WANTLIB += xcb-shm

MASTER_SITES=		http://www.qsl.net/pg4i/download/

COMPILER =		base-clang ports-gcc base-gcc

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS+=	--enable-hamlib

.include <bsd.port.mk>
