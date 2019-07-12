# $OpenBSD: Makefile,v 1.28 2019/07/12 20:47:55 sthen Exp $

COMMENT=	animated simulation of an ideal gas

DISTNAME=	xgas
PKGNAME=	xgas-1.0
REVISION=	3
CATEGORIES=	misc

MASTER_SITES=	${MASTER_SITE_SUNSITE:=X11/demos/}

PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c m xcb

CONFIGURE_STYLE=imake
NO_TEST=	Yes

post-install:
	@chmod 755 ${PREFIX}/bin/xgas
	@chown bin:bin ${PREFIX}/bin/xgas

.include <bsd.port.mk>
