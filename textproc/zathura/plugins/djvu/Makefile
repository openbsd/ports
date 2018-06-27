# $OpenBSD: Makefile,v 1.9 2018/06/27 21:04:04 espie Exp $

V =		0.2.8
COMMENT =	djvu plugin for zathura
DISTNAME =	zathura-djvu-${V}
REVISION =	0

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-djvu

LIB_DEPENDS +=	graphics/djvulibre

WANTLIB += cairo djvulibre girara-gtk3 glib-2.0

.include <bsd.port.mk>
