# $OpenBSD: Makefile,v 1.27 2015/06/19 14:04:48 jasper Exp $

COMMENT =	DataObjects driver for SQLite3

VERSION =	0.10.16
DISTNAME =	do_sqlite3-${VERSION}
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-data_objects,${MODRUBY_FLAVOR}=${VERSION}

WANTLIB =		sqlite3

MODRUBY_TEST =		rspec3
MODRUBY_TEST_TARGET =	spec/*_spec.rb
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
