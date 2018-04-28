# $OpenBSD: Makefile,v 1.9 2018/04/28 14:57:32 landry Exp $

V =		0.2.9
COMMENT =	poppler pdf plugin for zathura
DISTNAME =	zathura-pdf-poppler-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-pdf-poppler/

LIB_DEPENDS +=	print/poppler

WANTLIB += girara-gtk3 glib-2.0 gobject-2.0
WANTLIB += poppler-glib

.include <bsd.port.mk>
