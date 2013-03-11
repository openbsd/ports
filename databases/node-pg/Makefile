# $OpenBSD: Makefile,v 1.10 2013/03/11 02:52:05 espie Exp $

COMMENT =	postgresql client for Node.js

NPM_VERSION =	0.7.1
NPM_NAME =	pg
REVISION =	1
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	https://github.com/brianc/node-postgres

# MIT
PERMIT_PACKAGE_CDROM = Yes

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
TEST_TARGET = test-all

.include <bsd.port.mk>
