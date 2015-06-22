# $OpenBSD: Makefile,v 1.12 2015/06/22 20:15:32 naddy Exp $

COMMENT=	X Render extension test suite

DISTNAME=	rendercheck-1.4
CATEGORIES=	x11

HOMEPAGE=	http://www.freedesktop.org/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# X11/MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender c pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_XORG:=app/}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
