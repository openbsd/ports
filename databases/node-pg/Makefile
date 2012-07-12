# $OpenBSD: Makefile,v 1.8 2012/07/12 21:42:53 jasper Exp $

COMMENT =	postgresql client for Node.js

NPM_VERSION =	0.7.1
NPM_NAME =	pg
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	https://github.com/brianc/node-postgres

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext

WANTLIB =	pq

BUILD_DEPENDS =	${RUN_DEPENDS}
LIB_DEPENDS =	databases/postgresql
RUN_DEPENDS =	devel/node-generic-pool
MODNODE_DEPENDS = generic-pool

pre-configure:
	${SUBST_CMD} ${WRKSRC}/binding.gyp

# Must have a database setup running on localhost with
# user=postgres and password=1234
REGRESS_TARGET = test-all

.include <bsd.port.mk>
