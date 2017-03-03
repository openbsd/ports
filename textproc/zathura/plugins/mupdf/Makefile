# $OpenBSD: Makefile,v 1.10 2017/03/03 09:41:01 landry Exp $

V =		0.3.1
COMMENT =	mupdf pdf plugin for zathura
DISTNAME =	zathura-pdf-mupdf-${V}

HOMEPAGE =	https://pwmt.org/projects/zathura-pdf-mupdf/

MAKE_FLAGS =	VERBOSE=1 \
		MUPDF_LIB=-lmupdf \
		DESKTOPPREFIX=${PREFIX}/share/applications

LIB_DEPENDS +=	textproc/mupdf

WANTLIB += atk-1.0 cairo cairo-gobject crypto gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girara-gtk3 glib-2.0 gobject-2.0 gtk-3 intl
WANTLIB += jbig2dec jpeg mupdf openjp2 pango-1.0 pangocairo-1.0
WANTLIB += freetype harfbuzz z

.include <bsd.port.mk>
