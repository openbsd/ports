# $OpenBSD: Makefile,v 1.1.1.1 2014/09/02 13:32:54 landry Exp $

V =		0.2.3
COMMENT =	djvu plugin for zathura
DISTNAME =	zathura-djvu-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-djvu

LIB_DEPENDS +=	graphics/djvulibre

WANTLIB += cairo djvulibre girara-gtk3 glib-2.0

.include <bsd.port.mk>

