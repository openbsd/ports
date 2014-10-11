# $OpenBSD: Makefile,v 1.3 2014/10/11 18:08:40 sthen Exp $

V =		0.2.2
COMMENT =	spectre postscript plugin for zathura
DISTNAME =	zathura-ps-${V}
REVISION =	1

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-ps/

LIB_DEPENDS +=	print/libspectre

WANTLIB += cairo girara-gtk3 glib-2.0 spectre

.include <bsd.port.mk>

