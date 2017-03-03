# $OpenBSD: Makefile,v 1.6 2017/03/03 09:41:01 landry Exp $

V =		0.1.6
COMMENT =	comic book plugin for zathura
DISTNAME =	zathura-cb-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-cb/

LIB_DEPENDS +=	archivers/libarchive

WANTLIB += archive cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girara-gtk3 glib-2.0 gobject-2.0 intl pango-1.0 pangocairo-1.0

.include <bsd.port.mk>
