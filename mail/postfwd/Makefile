# $OpenBSD: Makefile,v 1.1.1.1 2013/03/20 14:22:06 giovanni Exp $

COMMENT =	Postfix policy server

DISTNAME =	postfwd-1.34
CATEGORIES =	mail

HOMEPAGE =	http://www.postfwd.org/

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =Yes

MASTER_SITES =	${HOMEPAGE}

RUN_DEPENDS =	devel/p5-Net-Server \
		devel/p5-IO-Multiplex \
		net/p5-Net-DNS 

USE_GROFF =	Yes

PKG_ARCH =	*
NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/sbin/postfwd2 ${PREFIX}/sbin/postfwd2
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/postfwd/
	${INSTALL_DATA} ${WRKSRC}/etc/postfwd.cf.sample ${PREFIX}/share/examples/postfwd/postfwd.cf.sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/postfwd/
	${INSTALL_DATA} ${WRKSRC}/doc/postfwd2* ${PREFIX}/share/doc/postfwd/
	${INSTALL_MAN} ${WRKSRC}/man/man8/postfwd2.8 ${PREFIX}/man/man8/postfwd2.8

.include <bsd.port.mk>
