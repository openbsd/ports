# $OpenBSD: Makefile,v 1.28 2017/10/23 17:10:50 sthen Exp $
#

COMMENT=	watch what you are doing -- are you hostile

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0
REVISION =	2
CATEGORIES=	games

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xt c m xcb

CONFIGURE_STYLE=imake noman

WRKDIST=	${WRKDIR}/xeyes

NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
