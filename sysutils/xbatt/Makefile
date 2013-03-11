# $OpenBSD: Makefile,v 1.27 2013/03/11 11:41:33 espie Exp $

ONLY_FOR_ARCHS= ${APM_ARCHS}

COMMENT=	laptop battery status display for X11

DISTNAME=	xbatt-1.2.1
REVISION =	3
CATEGORIES=	sysutils x11

MASTER_SITES=	http://www.clave.gr.jp/~eto/xbatt/

MAINTAINER=	Niklas Hallqvist <niklas@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xpm Xt c \
			pthread-stubs xcb

CONFIGURE_STYLE=	imake noman

NO_TEST=	Yes

.include <bsd.port.mk>
