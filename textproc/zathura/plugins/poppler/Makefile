# $OpenBSD: Makefile,v 1.6 2016/10/16 13:51:21 sthen Exp $

V =		0.2.6
COMMENT =	poppler pdf plugin for zathura
DISTNAME =	zathura-pdf-poppler-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-pdf-poppler/

LIB_DEPENDS +=	print/poppler

WANTLIB += cairo gio-2.0 girara-gtk3 glib-2.0 gobject-2.0 intl
WANTLIB += poppler-glib

.include <bsd.port.mk>
