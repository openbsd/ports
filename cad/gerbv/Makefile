# $OpenBSD: Makefile,v 1.24 2014/01/01 20:46:27 naddy Exp $

COMMENT=		viewer for Gerber (RS-274X) files
DISTNAME=		gerbv-2.5.0
CATEGORIES=		cad graphics
REVISION=		4

HOMEPAGE=		http://gerbv.gpleda.org/

SHARED_LIBS +=  gerbv                     0.1 # 1.5

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z GL Xxf86vm drm ffi stdc++ xcb-shm
WANTLIB += gthread-2.0 pcre pthread xcb-render
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gerbv/}

MODULES=		devel/gettext

BUILD_DEPENDS=		shells/bash
LIB_DEPENDS=		x11/gtk+2

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+2,-guic

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-update-desktop-database

pre-configure:
	${SUBST_CMD} ${WRKSRC}/icon-theme-installer

.include <bsd.port.mk>
