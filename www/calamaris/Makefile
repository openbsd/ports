# $OpenBSD: Makefile,v 1.5 2002/09/08 16:59:46 pvalchev Exp $
# $RuOBSD: Makefile,v 1.3 2002/04/28 16:29:29 grange Exp $

COMMENT=		"proxy-cache-servers logfiles analizer"

DISTNAME=		calamaris-2.52
CATEGORIES=		www sysutils

HOMEPAGE=		http://cord.de/tools/squid/calamaris/	

MAINTAINER=		Alexander Yurchenko <grange@rt.mipt.ru>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cord.de/tools/squid/calamaris/

NO_BUILD=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/calamaris ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/calamaris.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/calamaris
	${INSTALL_DATA} ${WRKSRC}/EXAMPLES ${PREFIX}/share/doc/calamaris
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/calamaris

.include <bsd.port.mk>
