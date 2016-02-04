# $OpenBSD: Makefile,v 1.4 2016/02/04 18:08:17 juanfra Exp $

V =		0.1.2
COMMENT =	comic book plugin for zathura
DISTNAME =	zathura-cb-${V}
REVISION =	2

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-cb/

LIB_DEPENDS +=	archivers/libarchive

WANTLIB += archive cairo girara-gtk3 glib-2.0

.include <bsd.port.mk>

