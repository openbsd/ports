# $OpenBSD: Makefile,v 1.20 2014/08/19 13:54:56 giovanni Exp $

COMMENT=	postfix greylist daemon

DISTNAME=	postgrey-1.35
CATEGORIES=	mail

HOMEPAGE=	http://postgrey.schweikert.ch/

MASTER_SITES=	${HOMEPAGE}/pub/ \
		${HOMEPAGE}/pub/old/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes

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
