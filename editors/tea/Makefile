# $OpenBSD: Makefile,v 1.18 2015/04/21 18:33:49 sthen Exp $

COMMENT=	powerful and simple GTK editor

DISTNAME=	teagtk-17.6.6
REVISION=	5
CATEGORIES=	editors x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tea-editor/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://tea-editor.sf.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender aspell>=16 atk-1.0 c cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += gtksourceview-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb xml2 z zzip>=13

LIB_DEPENDS=	x11/gtk+2 \
		gtksourceview->=2,<3:x11/gtksourceview \
		textproc/aspell/core \
		archivers/zziplib
RUN_DEPENDS=	textproc/antiword

MODULES=	devel/gettext

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lm -lstdc++"

.include <bsd.port.mk>
