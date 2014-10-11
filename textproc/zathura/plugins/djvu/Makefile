# $OpenBSD: Makefile,v 1.2 2014/10/11 10:42:08 sthen Exp $

V =		0.2.3
COMMENT =	djvu plugin for zathura
DISTNAME =	zathura-djvu-${V}
REVISION =	0

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-djvu

LIB_DEPENDS +=	graphics/djvulibre

WANTLIB += cairo djvulibre girara-gtk3 glib-2.0

.include <bsd.port.mk>

