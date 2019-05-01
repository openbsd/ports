# $OpenBSD: Makefile,v 1.29 2019/05/01 19:29:44 sthen Exp $

ONLY_FOR_ARCHS= ${APM_ARCHS}

COMMENT=	laptop battery status display for X11

DISTNAME=	xbatt-1.2.1
REVISION =	5
CATEGORIES=	sysutils x11

MASTER_SITES=	http://www.clave.gr.jp/~eto/xbatt/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c \
			xcb

CONFIGURE_STYLE=	imake noman

NO_TEST=	Yes

.include <bsd.port.mk>
