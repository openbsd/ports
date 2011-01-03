# $OpenBSD: Makefile,v 1.18 2011/01/03 19:38:40 jasper Exp $

COMMENT=	gtk PSK31 send and receive

DISTNAME=	gpsk31-0.3
REVISION=	10
CATEGORIES=    	comms hamradio

HOMEPAGE=	http://www.qsl.net/pg4i/linux/gpsk31.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/desktop-file-utils
LIB_DEPENDS=		x11/gtk+2

MODULES=		devel/gettext

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gthread-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs sndio stdc++ xcb xcb-render
WANTLIB += z gtk-x11-2.0 gdk_pixbuf-2.0 gdk-x11-2.0 GL drm
WANTLIB += Xxf86vm xcb-shm

MASTER_SITES=		http://www.qsl.net/pg4i/download/

USE_GROFF =		Yes

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf no-autoheader
CONFIGURE_ARGS+=	--enable-hamlib

.include <bsd.port.mk>
