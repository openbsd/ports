# $OpenBSD: Makefile,v 1.4 2015/04/25 23:05:41 sthen Exp $

V =		0.2.7
REVISION =	0
COMMENT =	mupdf pdf plugin for zathura
DISTNAME =	zathura-pdf-mupdf-${V}

HOMEPAGE =	https://pwmt.org/projects/zathura-pdf-mupdf/

LIB_DEPENDS +=	textproc/mupdf
MODULES +=	devel/gettext
MAKE_FLAGS =	VERBOSE=1 \
		MUPDF_LIB=-lmupdf \
		DESKTOPPREFIX=${PREFIX}/share/applications

WANTLIB += atk-1.0 cairo cairo-gobject crypto fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girara-gtk3 glib-2.0 gobject-2.0 gtk-3
WANTLIB += jbig2dec jpeg m mupdf openjp2 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 z

.include <bsd.port.mk>

