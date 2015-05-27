# $OpenBSD: Makefile,v 1.3 2015/05/27 13:51:51 ajacoutot Exp $

V =		0.2.5
COMMENT =	poppler pdf plugin for zathura
DISTNAME =	zathura-pdf-poppler-${V}
REVISION =	0

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-pdf-poppler/

MODULES =	devel/gettext
WANTLIB += cairo gio-2.0 girara-gtk3 glib-2.0 gobject-2.0
WANTLIB += poppler-glib

LIB_DEPENDS +=	print/poppler

.include <bsd.port.mk>

