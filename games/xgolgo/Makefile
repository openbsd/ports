# $OpenBSD: Makefile,v 1.29 2019/07/12 20:46:27 sthen Exp $
#

COMMENT=	watch what you are doing -- are you hostile

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0
REVISION =	2
CATEGORIES=	games

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xt c m xcb

CONFIGURE_STYLE=imake noman

WRKDIST=	${WRKDIR}/xeyes

NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
