# $OpenBSD: Makefile,v 1.2 2019/07/12 20:47:36 sthen Exp $

COMMENT =	basic Postfix policy engine for Sender Policy Framework

V =		2.011
DISTNAME =	postfix-policyd-spf-perl-${V}
CATEGORIES =	mail

HOMEPAGE =	https://launchpad.net/postfix-policyd-spf-perl

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://launchpad.net/postfix-policyd-spf-perl/trunk/${V}/+download/

NO_BUILD =	Yes
NO_TEST =	Yes

RUN_DEPENDS =	mail/p5-Mail-SPF \
		net/p5-NetAddr-IP \
		net/p5-Sys-Hostname-Long

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/postfix-policyd-spf-perl ${PREFIX}/bin/policyd-spf-perl
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/policyd-spf-perl/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/policyd-spf-perl/

.include <bsd.port.mk>
