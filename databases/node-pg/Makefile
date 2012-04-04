# $OpenBSD: Makefile,v 1.2 2012/04/04 05:48:15 ajacoutot Exp $

COMMENT =	postgresql client for nodejs

NPM_VERSION =	0.6.10
NPM_NAME =	pg
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	https://github.com/brianc/node-postgres

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		www/node

CONFIGURE_STYLE =	npm ext

WANTLIB =	pq

BUILD_DEPENDS =	${RUN_DEPENDS}
LIB_DEPENDS =	databases/postgresql
RUN_DEPENDS =	devel/node-generic-pool
MODNODE_DEPENDS = generic-pool

.include <bsd.port.mk>
