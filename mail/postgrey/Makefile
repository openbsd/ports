# $OpenBSD: Makefile,v 1.25 2019/08/31 15:55:55 sthen Exp $

COMMENT=	postfix greylist daemon

DISTNAME=	postgrey-1.37
CATEGORIES=	mail

HOMEPAGE=	https://postgrey.schweikert.ch/

MASTER_SITES=	${HOMEPAGE}/pub/ \
		${HOMEPAGE}/pub/old/

# GPLv2
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes

# tests need more work
NO_TEST=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Net-Server \
			devel/p5-IO-Multiplex \
			databases/p5-BerkeleyDB \
			net/p5-Net-DNS

do-install:
	perl -pi -e 's,/etc/postfix,${SYSCONFDIR}/postfix,g' ${WRKSRC}/postgrey
	${INSTALL_SCRIPT} ${WRKSRC}/postgrey ${PREFIX}/libexec
	${INSTALL_SCRIPT} ${WRKSRC}/contrib/postgreyreport ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/postgrey/
	${INSTALL_DATA} ${WRKSRC}/postgrey_whitelist_clients ${PREFIX}/share/examples/postgrey
	${INSTALL_DATA} ${WRKSRC}/postgrey_whitelist_recipients ${PREFIX}/share/examples/postgrey
	pod2man ${WRKSRC}/postgrey ${PREFIX}/man/man1/postgrey.1

.include <bsd.port.mk>
