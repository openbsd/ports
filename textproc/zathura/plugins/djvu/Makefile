# $OpenBSD: Makefile,v 1.8 2018/04/28 14:57:32 landry Exp $

V =		0.2.8
COMMENT =	djvu plugin for zathura
DISTNAME =	zathura-djvu-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-djvu

LIB_DEPENDS +=	graphics/djvulibre

WANTLIB += cairo djvulibre girara-gtk3 glib-2.0

.include <bsd.port.mk>
