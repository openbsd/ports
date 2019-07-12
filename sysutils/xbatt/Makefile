# $OpenBSD: Makefile,v 1.30 2019/07/12 20:49:54 sthen Exp $

ONLY_FOR_ARCHS= ${APM_ARCHS}

COMMENT=	laptop battery status display for X11

DISTNAME=	xbatt-1.2.1
REVISION =	5
CATEGORIES=	sysutils x11

MASTER_SITES=	http://www.clave.gr.jp/~eto/xbatt/

PERMIT_PACKAGE=	Yes

WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c \
			xcb

CONFIGURE_STYLE=	imake noman

NO_TEST=	Yes

.include <bsd.port.mk>
