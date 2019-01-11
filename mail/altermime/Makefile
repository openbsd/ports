# $OpenBSD: Makefile,v 1.3 2019/01/11 01:51:34 danj Exp $

COMMENT=	utility for altering mime-encoded mailpacks

DISTNAME=	altermime-0.3.10
REVISION=	0

CATEGORIES=	mail

HOMEPAGE=	https://pldaniels.com/altermime/

# alterMIME LICENSE
# (see share/doc/altermime/LICENCE)
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/altermime
	${INSTALL_DATA} ${WRKSRC}/LICENCE ${PREFIX}/share/doc/altermime

.include <bsd.port.mk>
