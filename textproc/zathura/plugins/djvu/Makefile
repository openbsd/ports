# $OpenBSD: Makefile,v 1.6 2017/03/03 09:41:01 landry Exp $

V =		0.2.6
COMMENT =	djvu plugin for zathura
DISTNAME =	zathura-djvu-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-djvu

LIB_DEPENDS +=	graphics/djvulibre

WANTLIB += cairo djvulibre girara-gtk3 glib-2.0 intl

.include <bsd.port.mk>
