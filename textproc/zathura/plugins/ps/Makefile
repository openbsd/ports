# $OpenBSD: Makefile,v 1.9 2018/04/28 14:57:32 landry Exp $

V =		0.2.6
COMMENT =	spectre postscript plugin for zathura
DISTNAME =	zathura-ps-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-ps/

LIB_DEPENDS +=	print/libspectre

WANTLIB += cairo girara-gtk3 glib-2.0 spectre

.include <bsd.port.mk>
