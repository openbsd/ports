COMMENT=	simple xrandr config tool

DISTNAME=	lxrandr-0.3.2
REVISION=	1

CATEGORIES=	x11 sysutils

HOMEPAGE=	http://lxde.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += harfbuzz intl pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

SITES=		${SITE_SOURCEFORGE:=lxde/}
EXTRACT_SUFX=	.tar.xz

# needed for regression test
MODULES+=	textproc/intltool

LIB_DEPENDS=	devel/gettext,-runtime \
		x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
