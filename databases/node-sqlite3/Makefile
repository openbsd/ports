# $OpenBSD: Makefile,v 1.4 2012/07/12 21:42:53 jasper Exp $

COMMENT =	sqlite3 bindings for Node.js

NPM_VERSION =	2.1.4
NPM_NAME =	sqlite3
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Aaron Bieber <deftly@gmail.com>

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

.include <bsd.port.mk>
