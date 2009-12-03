# $OpenBSD: Makefile,v 1.1.1.1 2009/12/03 14:36:59 kevlo Exp $

COMMENT=	ircd proxy to the twitter API

DISTNAME=	tircd_v0.7
PKGNAME=	${DISTNAME:S/_v/-/}

CATEGORIES=	net

HOMEPAGE=	http://code.google.com/p/tircd/

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://tircd.googlecode.com/files/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::net/p5-Net-Twitter

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/tircd

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tircd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tircd
	${INSTALL_SCRIPT} ${WRKSRC}/tircd.pl ${PREFIX}/sbin/tircd
	${INSTALL_DATA} ${WRKSRC}/tircd.cfg ${PREFIX}/share/examples/tircd
	pod2man --section=1 ${WRKSRC}/tircd.pod > \
		${PREFIX}/man/man1/tircd.1

.include <bsd.port.mk>
