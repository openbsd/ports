COMMENT=		viewer for Gerber (RS-274X) files
DISTNAME=		gerbv-2.7.0
REVISION=		0
CATEGORIES=		cad graphics

HOMEPAGE=		http://gerbv.geda-project.org/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

SHARED_LIBS +=  gerbv                     1.0 # 1.5

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += ffi fontconfig freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gerbv/}

COMPILER=		base-clang ports-gcc

MODULES=		devel/dconf

BUILD_DEPENDS=		shells/bash \
			devel/gettext,-tools
LIB_DEPENDS=		x11/gtk+2

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-update-desktop-database

USE_GMAKE=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/icon-theme-installer

.include <bsd.port.mk>
