# $OpenBSD: Makefile,v 1.3 2004/10/01 09:48:48 xsa Exp $

COMMENT=	"Rogue like adventure game"

VERSION=	3.2
DISTNAME=	wanderer-${VERSION}

CATEGORIES=	games

HOMEPAGE=	http://www.surferz.net/~marina/

MAINTAINER=	Marina Brown <marina@surferz.net>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wanderer
	${INSTALL_DATA} /dev/null \
		${PREFIX}/share/examples/wanderer/wandererscores

.include <bsd.port.mk>
