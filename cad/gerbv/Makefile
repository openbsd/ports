# $OpenBSD: Makefile,v 1.34 2018/06/29 22:16:09 espie Exp $

COMMENT=		viewer for Gerber (RS-274X) files
DISTNAME=		gerbv-2.6.2
CATEGORIES=		cad graphics
REVISION=		4

HOMEPAGE=		http://gerbv.gpleda.org/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

SHARED_LIBS +=  gerbv                     0.1 # 1.5

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo expat ffi fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gerbv/}

BUILD_DEPENDS=		shells/bash
LIB_DEPENDS=		x11/gtk+2

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-update-desktop-database

pre-configure:
	${SUBST_CMD} ${WRKSRC}/icon-theme-installer

.include <bsd.port.mk>
