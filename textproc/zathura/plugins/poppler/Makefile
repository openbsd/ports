# $OpenBSD: Makefile,v 1.10 2018/06/27 21:04:04 espie Exp $

V =		0.2.9
COMMENT =	poppler pdf plugin for zathura
DISTNAME =	zathura-pdf-poppler-${V}
REVISION =	0

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-pdf-poppler/

LIB_DEPENDS +=	print/poppler

WANTLIB += girara-gtk3 glib-2.0 gobject-2.0
WANTLIB += poppler-glib

.include <bsd.port.mk>
