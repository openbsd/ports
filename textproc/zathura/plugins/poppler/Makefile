# $OpenBSD: Makefile,v 1.5 2016/02/04 18:08:17 juanfra Exp $

V =		0.2.5
COMMENT =	poppler pdf plugin for zathura
DISTNAME =	zathura-pdf-poppler-${V}
REVISION =	2

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-pdf-poppler/

WANTLIB += cairo gio-2.0 girara-gtk3 glib-2.0 gobject-2.0
WANTLIB += poppler-glib

LIB_DEPENDS +=	print/poppler

.include <bsd.port.mk>

