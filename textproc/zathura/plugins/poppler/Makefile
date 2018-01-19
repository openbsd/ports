# $OpenBSD: Makefile,v 1.8 2018/01/19 09:54:42 landry Exp $

V =		0.2.8
COMMENT =	poppler pdf plugin for zathura
DISTNAME =	zathura-pdf-poppler-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-pdf-poppler/

LIB_DEPENDS +=	print/poppler

WANTLIB += cairo gio-2.0 girara-gtk3 glib-2.0 gobject-2.0 intl
WANTLIB += poppler-glib

.include <bsd.port.mk>
