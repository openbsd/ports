# $OpenBSD: Makefile,v 1.1.1.1 2014/09/02 13:32:54 landry Exp $

V =		0.2.2
COMMENT =	spectre postscript plugin for zathura
DISTNAME =	zathura-ps-${V}

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-ps/

LIB_DEPENDS +=	print/libspectre

WANTLIB += cairo girara-gtk3 glib-2.0 spectre

.include <bsd.port.mk>

