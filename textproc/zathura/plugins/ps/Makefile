# $OpenBSD: Makefile,v 1.4 2015/08/25 14:23:25 sthen Exp $

V =		0.2.2
COMMENT =	spectre postscript plugin for zathura
DISTNAME =	zathura-ps-${V}
REVISION =	2

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-ps/

LIB_DEPENDS +=	print/libspectre

WANTLIB += cairo girara-gtk3 glib-2.0 spectre

.include <bsd.port.mk>

