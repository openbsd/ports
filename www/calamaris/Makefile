COMMENT=		proxy-cache-servers logfiles analizer

# 2.99.x are v3 betas
PORTROACH=		skipv:2.99.4.5

DISTNAME=		calamaris-2.59
REVISION=		0
CATEGORIES=		www sysutils

HOMEPAGE=		https://cord.de/calamaris-english

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://cord.de/files/calamaris/

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/calamaris ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/calamaris.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/calamaris
	${INSTALL_DATA} ${WRKSRC}/EXAMPLES ${PREFIX}/share/doc/calamaris
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/calamaris

.include <bsd.port.mk>
