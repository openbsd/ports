# $OpenBSD: Makefile,v 1.5 2013/09/28 08:50:40 ajacoutot Exp $

COMMENT=	MathML and SVG rendering library

GNOME_PROJECT=	lasem
GNOME_VERSION=	0.4.1
REVISION=	1

SHARED_LIBS +=  lasem-0.4            0.0      # 4.1

CATEGORIES=	graphics devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm
WANTLIB += c cairo drm expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/pango \
		graphics/gdk-pixbuf2 \
		textproc/libxml

MODGNOME_TOOLS=	gi

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	lasemdocdir=${PREFIX}/share/doc/lasem

.include <bsd.port.mk>
