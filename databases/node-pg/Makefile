# $OpenBSD: Makefile,v 1.16 2014/10/01 06:29:04 jasper Exp $

COMMENT =	postgresql client for Node.js

NPM_VERSION =	2.8.2
NPM_NAME =	pg
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Roman Kravchuk <kravchuk.kp@gmail.com>

HOMEPAGE =	https://github.com/brianc/node-postgres

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/node

CONFIGURE_STYLE =	npm ext

WANTLIB =	pq

BUILD_DEPENDS =	${RUN_DEPENDS}
LIB_DEPENDS =	databases/postgresql
RUN_DEPENDS =	devel/node-generic-pool \
		devel/node-buffer-writer

MODNODE_DEPENDS = generic-pool \
		  buffer-writer \
		  node-gyp

pre-configure:
	${SUBST_CMD} ${WRKSRC}/binding.gyp

# Must have a database setup running on localhost with
# user=postgres and password=1234
TEST_TARGET =	test-all
TEST_FLAGS =	WRKDIR=${WRKDIR}

.include <bsd.port.mk>
