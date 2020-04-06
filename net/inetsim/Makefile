# $OpenBSD: Makefile,v 1.1.1.1 2020/04/06 12:40:12 jasper Exp $

COMMENT =		suite for simulating common internet services

DISTNAME =		inetsim-1.3.1
CATEGORIES =		net

HOMEPAGE =		https://www.inetsim.org/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://www.inetsim.org/downloads/

MODULES =		perl

NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		devel/p5-IPC-Shareable \
			security/p5-IO-Socket-SSL \
			net/p5-Net-DNS \
			devel/p5-Net-Server

pre-install:
	find ${WRKSRC} -type f -name \*.orig -delete
	${SUBST_CMD} ${WRKSRC}/lib/INetSim/Config.pm
	${INSTALL_SCRIPT} ${WRKSRC}/inetsim ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/inetsim/
	${INSTALL_DATA} ${WRKSRC}/conf/inetsim.conf \
		${PREFIX}/share/examples/inetsim/
	cp -r ${WRKSRC}/data/ ${PREFIX}/share/examples/inetsim/
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/Inetsim
	cp -r ${WRKSRC}/lib/* ${PREFIX}/${P5SITE}

.include <bsd.port.mk>
