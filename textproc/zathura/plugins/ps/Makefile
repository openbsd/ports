# $OpenBSD: Makefile,v 1.10 2018/06/27 21:04:05 espie Exp $

V =		0.2.6
COMMENT =	spectre postscript plugin for zathura
DISTNAME =	zathura-ps-${V}
REVISION =	0

HOMEPAGE =	http://pwmt.org/projects/zathura/plugins/zathura-ps/

LIB_DEPENDS +=	print/libspectre

WANTLIB += cairo girara-gtk3 glib-2.0 spectre

.include <bsd.port.mk>
