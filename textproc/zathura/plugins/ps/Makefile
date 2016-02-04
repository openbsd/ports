# $OpenBSD: Makefile,v 1.5 2016/02/04 18:08:17 juanfra Exp $

V =		0.2.2
COMMENT =	spectre postscript plugin for zathura
DISTNAME =	zathura-ps-${V}
REVISION =	3

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-ps/

LIB_DEPENDS +=	print/libspectre

WANTLIB += cairo girara-gtk3 glib-2.0 spectre

.include <bsd.port.mk>

