# $OpenBSD: Makefile,v 1.6 2012/05/23 15:13:20 jasper Exp $

COMMENT =	postgresql client for nodejs

NPM_VERSION =	0.6.10
NPM_NAME =	pg
CATEGORIES =	databases

REVISION =	2

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

# Must have a database setup running on localhost with
# user=postgres and password=1234
REGRESS_TARGET = test-all

.include <bsd.port.mk>
