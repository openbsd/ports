# $OpenBSD: Makefile,v 1.17 2013/03/11 11:02:50 espie Exp $

COMMENT=	powerful and simple GTK editor

DISTNAME=	teagtk-17.6.6
REVISION=	4
CATEGORIES=	editors x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tea-editor/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://tea-editor.sf.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=	x11/gtk+2 \
		gtksourceview->=2,<3:x11/gtksourceview \
		textproc/aspell/core \
		archivers/zziplib
RUN_DEPENDS=	textproc/antiword

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xcomposite Xdamage Xrender expat fontconfig freetype z \
		atk-1.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		pango-1.0 pangoft2-1.0 pangocairo-1.0 png cairo xml2 \
		c m stdc++ pixman-1 pthread-stubs xcb gdk_pixbuf-2.0 \
		gdk-x11-2.0 gtk-x11-2.0 gtksourceview-2.0 aspell>=16 \
		zzip>=13

MODULES=	devel/gettext

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lm -lstdc++"

.include <bsd.port.mk>
