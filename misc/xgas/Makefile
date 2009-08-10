# $OpenBSD: Makefile,v 1.20 2009/08/10 06:33:02 kili Exp $

COMMENT=	animated simulation of an ideal gas

DISTNAME=	xgas
PKGNAME=        xgas-1.0p1
CATEGORIES=     misc

MASTER_SITES=	${MASTER_SITE_SUNSITE:=X11/demos/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xt c m pthread-stubs xcb

CONFIGURE_STYLE=imake
USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	@chmod 755 ${PREFIX}/bin/xgas
	@chown bin:bin ${PREFIX}/bin/xgas

.include <bsd.port.mk>
