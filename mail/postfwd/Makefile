# $OpenBSD: Makefile,v 1.7 2015/07/15 20:33:57 ajacoutot Exp $

COMMENT =	Postfix policy server

DISTNAME =	postfwd-1.35
REVISION =	4
CATEGORIES =	mail

HOMEPAGE =	http://www.postfwd.org/

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =Yes

MASTER_SITES =	${HOMEPAGE}

RUN_DEPENDS =	devel/p5-Net-Server \
		devel/p5-IO-Multiplex \
		net/p5-Net-DNS 

PKG_ARCH =	*
NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/sbin/postfwd2 ${PREFIX}/sbin/postfwd2
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/postfwd/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/postfwd/plugins/
	${INSTALL_DATA} ${WRKSRC}/etc/postfwd.cf.sample ${PREFIX}/share/examples/postfwd/postfwd.cf.sample
	${INSTALL_DATA} ${WRKSRC}/plugins/* ${PREFIX}/share/examples/postfwd/plugins/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postfwd/
	${INSTALL_SCRIPT} ${WRKSRC}/tools/postfwd-client.pl ${PREFIX}/bin/postfwd-client.pl
	${INSTALL_SCRIPT} ${WRKSRC}/tools/rblcheck.pl ${PREFIX}/bin/rblcheck.pl
	${INSTALL_SCRIPT} ${WRKSRC}/tools/hapolicy/hapolicy ${PREFIX}/sbin/hapolicy
	${INSTALL_DATA} ${WRKSRC}/doc/postfwd2* ${PREFIX}/share/doc/postfwd/
	${INSTALL_DATA} ${WRKSRC}/tools/hapolicy/hapolicy.* ${PREFIX}/share/doc/postfwd/
	${INSTALL_DATA} ${WRKSRC}/tools/request.sample ${PREFIX}/share/doc/postfwd/request.sample
	${INSTALL_MAN} ${WRKSRC}/man/man8/postfwd2.8 ${PREFIX}/man/man8/postfwd2.8

.include <bsd.port.mk>
