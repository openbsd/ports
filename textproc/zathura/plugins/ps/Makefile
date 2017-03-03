# $OpenBSD: Makefile,v 1.7 2017/03/03 09:41:02 landry Exp $

V =		0.2.4
COMMENT =	spectre postscript plugin for zathura
DISTNAME =	zathura-ps-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-ps/

LIB_DEPENDS +=	print/libspectre

WANTLIB += cairo girara-gtk3 glib-2.0 intl spectre

.include <bsd.port.mk>
