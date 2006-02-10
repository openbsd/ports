# $OpenBSD: Makefile,v 1.18 2006/02/10 10:21:14 steven Exp $

COMMENT=	"X11 trippy color-cycling toy"

DISTNAME=	xtacy114
PKGNAME=	xtacy-1.14p0
CATEGORIES=	x11

MASTER_SITES=	http://www.gweep.net/~jer/

HOMEPAGE=	http://sidehack.gweep.net/~jer/xtacy.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m 

USE_X11=	Yes
CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}/Xtacy

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xtacy ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xtacy.man ${PREFIX}/man/man1/xtacy.1

.include <bsd.port.mk>
