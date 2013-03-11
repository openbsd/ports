# $OpenBSD: Makefile,v 1.2 2013/03/11 11:23:50 espie Exp $

COMMENT=	utility for altering mime-encoded mailpacks

DISTNAME=	altermime-0.3.10

CATEGORIES=	mail

HOMEPAGE=	http://www.pldaniels.com/altermime/

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
