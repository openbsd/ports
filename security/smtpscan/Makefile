# $OpenBSD: Makefile,v 1.12 2019/07/12 20:49:36 sthen Exp $

COMMENT=	Remote SMTP Server Detection

VERSION=	0.5
DISTNAME=	smtpscan-${VERSION}
REVISION =	1
CATEGORIES=	security net mail

# GPL2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=UNIX/scanners/}

RUN_DEPENDS=	net/p5-Net-DNS
BUILD_DEPENDS=	${RUN_DEPENDS}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
WRKDIST=	${WRKDIR}/smtpscan

do-install:
	@perl -pi -e 's|/usr/local|${TRUEPREFIX}|g' ${WRKSRC}/src/smtpscan
	@perl -pi -e 's|\@prefix\@|${TRUEPREFIX}/share|g' \
		${WRKSRC}/docs/man/smtpscan.1
	@perl -pi -e 's|\@VERSION\@|${VERSION}|g' ${WRKSRC}/src/smtpscan \
		${WRKSRC}/docs/man/smtpscan.1
	${INSTALL_SCRIPT_DIR} ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/src/smtpscan ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/docs/man/smtpscan.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/smtpscan
	${INSTALL_DATA} ${WRKSRC}/src/fingerprints ${PREFIX}/share/smtpscan
	${INSTALL_DATA} ${WRKSRC}/src/tests ${PREFIX}/share/smtpscan

.include <bsd.port.mk>
