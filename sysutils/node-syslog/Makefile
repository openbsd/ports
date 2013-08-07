# $OpenBSD: Makefile,v 1.9 2013/08/07 21:58:01 naddy Exp $

COMMENT =	module to support sending messages to syslog

NPM_VERSION =	1.1.7
NPM_NAME =	node-syslog
CATEGORIES =	sysutils

REVISION = 	1

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
