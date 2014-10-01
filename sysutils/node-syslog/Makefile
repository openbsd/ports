# $OpenBSD: Makefile,v 1.12 2014/10/01 06:29:04 jasper Exp $

COMMENT =	module to support sending messages to syslog

NPM_VERSION =	1.1.7
NPM_NAME =	node-syslog
CATEGORIES =	sysutils

REVISION = 	4

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
