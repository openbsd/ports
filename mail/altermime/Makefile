COMMENT=	utility for altering mime-encoded mailpacks

DISTNAME=	altermime-0.3.10
REVISION=	1

CATEGORIES=	mail

HOMEPAGE=	https://pldaniels.com/altermime/

# alterMIME LICENSE
# (see share/doc/altermime/LICENCE)
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += c

MASTER_SITES=	${HOMEPAGE}

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/altermime
	${INSTALL_DATA} ${WRKSRC}/LICENCE ${PREFIX}/share/doc/altermime

.include <bsd.port.mk>
