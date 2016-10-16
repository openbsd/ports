# $OpenBSD: Makefile,v 1.5 2016/10/16 13:51:21 sthen Exp $

V =		0.2.5
COMMENT =	djvu plugin for zathura
DISTNAME =	zathura-djvu-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-djvu

LIB_DEPENDS +=	graphics/djvulibre

WANTLIB += cairo djvulibre girara-gtk3 glib-2.0 intl

.include <bsd.port.mk>
