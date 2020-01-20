# $OpenBSD: Makefile,v 1.11 2020/01/20 09:03:51 landry Exp $

V =		0.1.8
COMMENT =	comic book plugin for zathura
PROJECT =	zathura-cb
REVISION =	2

LIB_DEPENDS +=	archivers/libarchive

WANTLIB += archive cairo gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girara-gtk3 glib-2.0 gobject-2.0

.include <bsd.port.mk>
