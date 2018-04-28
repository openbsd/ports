# $OpenBSD: Makefile,v 1.8 2018/04/28 14:57:32 landry Exp $

V =		0.1.8
COMMENT =	comic book plugin for zathura
DISTNAME =	zathura-cb-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-cb/

LIB_DEPENDS +=	archivers/libarchive

WANTLIB += archive cairo gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girara-gtk3 glib-2.0 gobject-2.0

.include <bsd.port.mk>
