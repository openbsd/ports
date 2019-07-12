# $OpenBSD: Makefile,v 1.8 2019/07/12 20:48:50 sthen Exp $

COMMENT=	ircd proxy to the twitter API

DISTNAME=	tircd_v0.7
PKGNAME=	${DISTNAME:S/_v/-/}
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	https://code.google.com/p/tircd/

# perl
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=tircd/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	net/p5-Net-Twitter

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/tircd

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tircd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tircd
	${INSTALL_SCRIPT} ${WRKSRC}/tircd.pl ${PREFIX}/sbin/tircd
	${INSTALL_DATA} ${WRKSRC}/tircd.cfg ${PREFIX}/share/examples/tircd
	pod2man --section=1 ${WRKSRC}/tircd.pod > \
		${PREFIX}/man/man1/tircd.1

.include <bsd.port.mk>
