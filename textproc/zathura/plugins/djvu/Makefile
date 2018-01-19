# $OpenBSD: Makefile,v 1.7 2018/01/19 09:54:42 landry Exp $

V =		0.2.7
COMMENT =	djvu plugin for zathura
DISTNAME =	zathura-djvu-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-djvu

LIB_DEPENDS +=	graphics/djvulibre

WANTLIB += cairo djvulibre girara-gtk3 glib-2.0 intl

.include <bsd.port.mk>
