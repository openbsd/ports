# $OpenBSD: Makefile,v 1.30 2017/10/23 17:10:37 sthen Exp $

COMMENT=		viewer for Gerber (RS-274X) files
DISTNAME=		gerbv-2.6.2
CATEGORIES=		cad graphics
REVISION=		0

HOMEPAGE=		http://gerbv.gpleda.org/
MAINTAINER=		Brian Callahan <bcallah@devio.us>

SHARED_LIBS +=  gerbv                     0.1 # 1.5

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gerbv/}

MODULES=		devel/gettext

BUILD_DEPENDS=		shells/bash
LIB_DEPENDS=		x11/gtk+2

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-update-desktop-database

pre-configure:
	${SUBST_CMD} ${WRKSRC}/icon-theme-installer

.include <bsd.port.mk>
