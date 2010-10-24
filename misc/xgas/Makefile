# $OpenBSD: Makefile,v 1.22 2010/10/24 21:26:49 ajacoutot Exp $

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
USE_GROFF =	Yes
NO_REGRESS=	Yes

post-install:
	@chmod 755 ${PREFIX}/bin/xgas
	@chown bin:bin ${PREFIX}/bin/xgas

.include <bsd.port.mk>
