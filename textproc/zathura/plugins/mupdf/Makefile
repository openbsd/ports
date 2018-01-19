# $OpenBSD: Makefile,v 1.11 2018/01/19 09:54:42 landry Exp $

# mupdf plugin 0.3.2 targets mupdf 1.12 API
V =		0.3.1
REVISION =	0
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
