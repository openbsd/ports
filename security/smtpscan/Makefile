# $OpenBSD: Makefile,v 1.7 2009/02/15 19:49:27 jasper Exp $

COMMENT=	Remote SMTP Server Detection

VERSION=	0.5
DISTNAME=	smtpscan-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	security net mail

# GPL2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PACKETSTORM:=UNIX/scanners/}

RUN_DEPENDS=	:p5-Net-DNS-*:net/p5-Net-DNS
BUILD_DEPENDS=	${RUN_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes
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
