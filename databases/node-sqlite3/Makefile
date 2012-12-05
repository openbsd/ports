# $OpenBSD: Makefile,v 1.7 2012/12/05 00:41:34 abieber Exp $

COMMENT =	sqlite3 bindings for Node.js

NPM_VERSION =	2.1.5
NPM_NAME =	sqlite3

REVISION = 0

CATEGORIES =	databases

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

HOMEPAGE =	https://github.com/developmentseed/node-sqlite3

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext

WANTLIB =	sqlite3

BUILD_DEPENDS =	${RUN_DEPENDS}

# needs expresso and further love
NO_REGRESS =	Yes

pre-configure:
	${SUBST_CMD} ${WRKDIST}/binding.gyp  

.include <bsd.port.mk>
