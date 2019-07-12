# $OpenBSD: Makefile,v 1.15 2019/07/12 20:47:02 sthen Exp $

COMMENT=		GObject library for handling and rendering XPS documents

GNOME_PROJECT=		libgxps
GNOME_VERSION=		0.2.5

REVISION=		2

SHARED_LIBS +=  gxps                 0.1      # 4.1

CATEGORIES=		graphics

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xext Xrender archive bz2 c cairo crypto expat ffi
WANTLIB += fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl jpeg lcms2 lz4 lzma lzo2 m pcre pixman-1
WANTLIB += png pthread tiff xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		x11/gnome

# XXX <unknown>:: Fatal: GXPS: Namespace is empty
# https://bugzilla.gnome.org/show_bug.cgi?id=767910
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODGNOME_TOOLS=		docbook gobject-introspection

LIB_DEPENDS=		archivers/libarchive \
			graphics/cairo \
			graphics/lcms2

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69

# requires gtk+3
CONFIGURE_ARGS +=	--disable-test

.include <bsd.port.mk>
