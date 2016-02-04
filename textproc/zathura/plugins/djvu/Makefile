# $OpenBSD: Makefile,v 1.4 2016/02/04 18:08:17 juanfra Exp $

V =		0.2.3
COMMENT =	djvu plugin for zathura
DISTNAME =	zathura-djvu-${V}
REVISION =	2

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-djvu

LIB_DEPENDS +=	graphics/djvulibre

WANTLIB += cairo djvulibre girara-gtk3 glib-2.0

.include <bsd.port.mk>

