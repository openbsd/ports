# $OpenBSD: Makefile,v 1.1.1.1 2012/05/30 16:47:01 ajacoutot Exp $

COMMENT=	utility for altering mime-encoded mailpacks

DISTNAME=	altermime-0.3.10

CATEGORIES=	mail

HOMEPAGE=	http://www.pldaniels.com/altermime/

# alterMIME LICENSE
# (see share/doc/altermime/LICENCE)
PERMIT_PACKAGE_CDROM=	may not sell
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= may not sell
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MASTER_SITES=	${HOMEPAGE}

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/altermime
	${INSTALL_DATA} ${WRKSRC}/LICENCE ${PREFIX}/share/doc/altermime

.include <bsd.port.mk>
