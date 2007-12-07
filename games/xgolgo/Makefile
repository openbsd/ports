# $OpenBSD: Makefile,v 1.20 2007/12/07 15:58:16 ajacoutot Exp $
#

COMMENT=	watch what you are doing -- are you hostile

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0p0
CATEGORIES=	games

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xt c m

MASTER_SITES=	${MASTER_SITE_BACKUP}

CONFIGURE_STYLE=imake noman

WRKDIST=	${WRKDIR}/xeyes

USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
