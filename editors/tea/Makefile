# $OpenBSD: Makefile,v 1.29 2019/07/12 20:46:06 sthen Exp $

COMMENT=	powerful and simple GTK editor

DISTNAME=	teagtk-17.6.6
REVISION=	11
CATEGORIES=	editors x11
MASTER_SITES=	http://semiletov.org/tea/dloads/ \
		${MASTER_SITE_SOURCEFORGE:=tea-editor/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://semiletov.org/tea/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender aspell>=16 atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += gtksourceview-2.0 iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread ${COMPILER_LIBCXX} xcb xml2 z zzip>=13

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	x11/gtk+2 \
		gtksourceview->=2,<3:x11/gtksourceview \
		textproc/aspell/core \
		archivers/zziplib
RUN_DEPENDS=	textproc/antiword

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lm -lstdc++"

.include <bsd.port.mk>
