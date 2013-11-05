# $OpenBSD: Makefile,v 1.14 2013/11/05 16:24:51 abieber Exp $

COMMENT =	postgresql client for Node.js

NPM_VERSION =	1.1.0
NPM_NAME =	pg
CATEGORIES =	databases
REVISION =	2

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
		  buffer-writer

pre-configure:
	${SUBST_CMD} ${WRKSRC}/binding.gyp

# Must have a database setup running on localhost with
# user=postgres and password=1234
TEST_TARGET = test-all

.include <bsd.port.mk>
