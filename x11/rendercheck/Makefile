# $OpenBSD: Makefile,v 1.15 2019/07/12 20:51:20 sthen Exp $

COMMENT=	X Render extension test suite

DISTNAME=	rendercheck-1.5
CATEGORIES=	x11
REVISION=	0

HOMEPAGE=	http://www.freedesktop.org/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# X11/MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender c xcb

MASTER_SITES=	${MASTER_SITE_XORG:=app/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
