# $OpenBSD: Makefile,v 1.9 2018/06/27 21:04:04 espie Exp $

V =		0.1.8
COMMENT =	comic book plugin for zathura
DISTNAME =	zathura-cb-${V}
REVISION =	0

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-cb/

LIB_DEPENDS +=	archivers/libarchive

WANTLIB += archive cairo gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girara-gtk3 glib-2.0 gobject-2.0

.include <bsd.port.mk>
