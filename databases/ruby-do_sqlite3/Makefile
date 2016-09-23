# $OpenBSD: Makefile,v 1.29 2016/09/23 09:16:53 sthen Exp $

COMMENT =	DataObjects driver for SQLite3

VERSION =	0.10.17
REVISION =	0
DISTNAME =	do_sqlite3-${VERSION}
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

BUILD_DEPENDS =		${RUN_DEPENDS}
LIB_DEPENDS =		databases/sqlite3
RUN_DEPENDS =		databases/ruby-data_objects,${MODRUBY_FLAVOR}=${VERSION}

WANTLIB =		sqlite3

MODRUBY_TEST =		rspec3
MODRUBY_TEST_TARGET =	spec/*_spec.rb
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
