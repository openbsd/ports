# $OpenBSD: Makefile,v 1.28 2017/10/23 17:11:03 sthen Exp $

ONLY_FOR_ARCHS= ${APM_ARCHS}

COMMENT=	laptop battery status display for X11

DISTNAME=	xbatt-1.2.1
REVISION =	4
CATEGORIES=	sysutils x11

MASTER_SITES=	http://www.clave.gr.jp/~eto/xbatt/

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c \
			xcb

CONFIGURE_STYLE=	imake noman

NO_TEST=	Yes

.include <bsd.port.mk>
