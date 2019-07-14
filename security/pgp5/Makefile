# $OpenBSD: Makefile,v 1.43 2019/07/14 00:39:39 naddy Exp $

COMMENT=	Pretty Good Privacy 5.0i (world wide use)

DISTNAME=	pgp50i-unix-src
PKGNAME=	pgp-5.0i
REVISION=	2
CATEGORIES=	security
FIX_EXTRACT_PERMISSIONS=Yes

MASTER_SITES=	https://spacehopper.org/mirrors/

# see apps/common/pgpLicense.c
PERMIT_PACKAGE=	Yes

WANTLIB=		c m

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config

WRKDIST=	${WRKDIR}/pgp50i/src

post-patch:
	@mv ${WRKSRC}/man/pgp.1 ${WRKSRC}/man/pgp5.1

post-install:
	@strip ${PREFIX}/bin/pgp5
	@strip ${PREFIX}/bin/pgpk
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pgp5
	${INSTALL_DATA} ${WRKSRC}/language50.txt ${PREFIX}/lib/pgp5

.include <bsd.port.mk>
