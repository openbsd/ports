# $OpenBSD: Makefile,v 1.8 2018/01/19 09:54:42 landry Exp $

V =		0.2.5
COMMENT =	spectre postscript plugin for zathura
DISTNAME =	zathura-ps-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-ps/

LIB_DEPENDS +=	print/libspectre

WANTLIB += cairo girara-gtk3 glib-2.0 intl spectre

.include <bsd.port.mk>
