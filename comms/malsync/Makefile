# $OpenBSD: Makefile,v 1.24 2006/08/01 22:19:46 espie Exp $

COMMENT=		"command line tool to synchronize Palm pilot to AvantGo"

VERSION=		2.1.1
DISTNAME=		malsync_${VERSION}.src
PKGNAME=		malsync-${VERSION}
CATEGORIES=             comms palm

HOMEPAGE=		http://www.tomw.org/malsync/

MAINTAINER=		Antoine Jacoutot <ajacoutot@lphp.org>

# MPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		pisock.>=8::comms/pilot-link

USE_GMAKE=		Yes
WRKSRC=			${WRKDIR}/malsync
WRKDIST=		${WRKSRC}

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/malsync ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/malsync
.for i in README_AvantGo README_malsync
	${INSTALL_DATA} ${WRKSRC}/Doc/${i} ${PREFIX}/share/doc/malsync
.endfor

.include <bsd.port.mk>
