# $OpenBSD: Makefile,v 1.19 2013/05/08 17:12:27 jeremy Exp $

COMMENT =	DataObjects driver for SQLite3

VERSION =	0.10.12
DISTNAME =	do_sqlite3-${VERSION}
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-data_objects,${MODRUBY_FLAVOR}=${VERSION}

WANTLIB =		sqlite3

MODRUBY_TEST =	rspec2
MODRUBY_TEST_TARGET = spec/*_spec.rb
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
