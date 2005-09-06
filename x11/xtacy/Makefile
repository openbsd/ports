# $OpenBSD: Makefile,v 1.17 2005/09/06 04:59:58 pvalchev Exp $

COMMENT=	"X11 trippy color-cycling toy"

DISTNAME=	xtacy114
PKGNAME=	xtacy-1.14p0
CATEGORIES=	x11

MASTER_SITES=	ftp://sidehack.gweep.net/pub/software/ \
		http://www.ultranet.com/~jjohnson/

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
