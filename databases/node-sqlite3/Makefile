# $OpenBSD: Makefile,v 1.11 2013/11/05 16:24:14 abieber Exp $

COMMENT =	sqlite3 bindings for Node.js

NPM_VERSION =	2.1.7
NPM_NAME =	sqlite3

REVISION = 2

CATEGORIES =	databases

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE =	https://github.com/developmentseed/node-sqlite3

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext

WANTLIB =	sqlite3

BUILD_DEPENDS =	${RUN_DEPENDS}

# needs expresso and further love
NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKDIST}/binding.gyp  

.include <bsd.port.mk>
