# $OpenBSD: Makefile,v 1.7 2013/03/11 11:41:31 espie Exp $

COMMENT =	module to support sending messages to syslog

NPM_VERSION =	1.1.6
NPM_NAME =	node-syslog
CATEGORIES =	sysutils

REVISION = 0

HOMEPAGE =	http://github.com/schamane/node-syslog

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKDIST}/binding.gyp

.include <bsd.port.mk>
