# $OpenBSD: Makefile,v 1.25 2013/10/11 20:39:38 naddy Exp $

COMMENT=	animated simulation of an ideal gas

DISTNAME=	xgas
PKGNAME=	xgas-1.0
REVISION=	2
CATEGORIES=	misc

MASTER_SITES=	${MASTER_SITE_SUNSITE:=X11/demos/}

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c m pthread-stubs xcb

CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_TEST=	Yes

post-install:
	@chmod 755 ${PREFIX}/bin/xgas
	@chown bin:bin ${PREFIX}/bin/xgas

.include <bsd.port.mk>
