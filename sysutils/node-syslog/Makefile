# $OpenBSD: Makefile,v 1.14 2015/04/17 10:36:26 jasper Exp $

COMMENT =	module to support sending messages to syslog

NPM_VERSION =	1.2.0
NPM_NAME =	node-syslog
CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/schamane/node-syslog

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKDIST}/binding.gyp

.include <bsd.port.mk>
