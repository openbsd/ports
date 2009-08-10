# $OpenBSD: Makefile,v 1.21 2009/08/10 06:31:43 kili Exp $
#

COMMENT=	watch what you are doing -- are you hostile

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0p1
CATEGORIES=	games

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xt c m pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_BACKUP}

CONFIGURE_STYLE=imake noman

WRKDIST=	${WRKDIR}/xeyes

USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
