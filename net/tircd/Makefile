# $OpenBSD: Makefile,v 1.5 2013/08/07 21:32:28 naddy Exp $

COMMENT=	ircd proxy to the twitter API

DISTNAME=	tircd_v0.7
PKGNAME=	${DISTNAME:S/_v/-/}
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	https://code.google.com/p/tircd/

# perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://tircd.googlecode.com/files/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/p5-Net-Twitter

NO_BUILD=	Yes
NO_TEST=	Yes
USE_GROFF =	Yes

WRKDIST=	${WRKDIR}/tircd

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tircd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tircd
	${INSTALL_SCRIPT} ${WRKSRC}/tircd.pl ${PREFIX}/sbin/tircd
	${INSTALL_DATA} ${WRKSRC}/tircd.cfg ${PREFIX}/share/examples/tircd
	pod2man --section=1 ${WRKSRC}/tircd.pod > \
		${PREFIX}/man/man1/tircd.1

.include <bsd.port.mk>
