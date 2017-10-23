# $OpenBSD: Makefile,v 1.14 2017/10/23 17:11:06 sthen Exp $

COMMENT=	X Render extension test suite

DISTNAME=	rendercheck-1.5
CATEGORIES=	x11
REVISION=	0

HOMEPAGE=	http://www.freedesktop.org/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# X11/MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender c xcb

MASTER_SITES=	${MASTER_SITE_XORG:=app/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
