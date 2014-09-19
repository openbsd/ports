# $OpenBSD: Makefile,v 1.2 2014/09/19 04:36:00 landry Exp $

V =		0.2.6
REVISION =	0
COMMENT =	mupdf pdf plugin for zathura
DISTNAME =	zathura-pdf-mupdf-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-pdf-mupdf

LIB_DEPENDS +=	textproc/mupdf
MAKE_FLAGS =	VERBOSE=1 \
		MUPDF_LIB=-lmupdf \
		DESKTOPPREFIX=${PREFIX}/share/applications

WANTLIB += atk-1.0 cairo cairo-gobject crypto fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girara-gtk3 glib-2.0 gobject-2.0
WANTLIB += gtk-3 jbig2dec m mupdf openjp2 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z jpeg

.include <bsd.port.mk>

