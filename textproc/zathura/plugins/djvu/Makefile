# $OpenBSD: Makefile,v 1.3 2015/08/25 14:23:25 sthen Exp $

V =		0.2.3
COMMENT =	djvu plugin for zathura
DISTNAME =	zathura-djvu-${V}
REVISION =	1

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-djvu

LIB_DEPENDS +=	graphics/djvulibre

WANTLIB += cairo djvulibre girara-gtk3 glib-2.0

.include <bsd.port.mk>

