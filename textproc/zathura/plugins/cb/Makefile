# $OpenBSD: Makefile,v 1.12 2021/11/15 14:29:41 sthen Exp $

V =		0.1.9
COMMENT =	comic book plugin for zathura
PROJECT =	zathura-cb

LIB_DEPENDS +=	archivers/libarchive

WANTLIB += archive cairo gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girara-gtk3 glib-2.0 gobject-2.0

.include <bsd.port.mk>
