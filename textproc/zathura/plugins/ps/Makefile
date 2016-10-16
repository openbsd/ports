# $OpenBSD: Makefile,v 1.6 2016/10/16 13:51:21 sthen Exp $

V =		0.2.3
COMMENT =	spectre postscript plugin for zathura
DISTNAME =	zathura-ps-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-ps/

LIB_DEPENDS +=	print/libspectre

WANTLIB += cairo girara-gtk3 glib-2.0 intl spectre

.include <bsd.port.mk>
