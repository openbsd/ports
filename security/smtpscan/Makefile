# $OpenBSD: Makefile,v 1.1.1.1 2003/04/19 20:31:55 sturm Exp $

COMMENT=	"remote SMTP server detection"

VERSION=	0.4
DISTNAME=	smtpscan-${VERSION}
CATEGORIES=	security net mail

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# GPL2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.greyhats.org/outils/smtpscan/ \
		${MASTER_SITE_PACKETSTORM:=UNIX/scanners/}

RUN_DEPENDS=	:p5-Net-DNS-*:net/p5-Net-DNS

NO_BUILD=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}/smtpscan

post-patch:
	@perl -pi -e 's|/usr/local|${PREFIX}|g' ${WRKSRC}/src/smtpscan
	@perl -pi -e 's|\@prefix\@|${PREFIX}/share|g' \
		${WRKSRC}/docs/man/smtpscan.1
	@perl -pi -e 's|\@VERSION\@|${VERSION}|g' ${WRKSRC}/src/smtpscan \
		${WRKSRC}/docs/man/smtpscan.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/src/smtpscan ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/docs/man/smtpscan.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/smtpscan
	${INSTALL_DATA} ${WRKSRC}/src/fingerprints ${PREFIX}/share/smtpscan
	${INSTALL_DATA} ${WRKSRC}/src/tests ${PREFIX}/share/smtpscan

.include <bsd.port.mk>
