# $OpenBSD: Makefile,v 1.18 2013/03/11 02:52:08 espie Exp $

COMMENT =	DataObjects driver for SQLite3

VERSION =	0.10.8
DISTNAME =	do_sqlite3-${VERSION}
CATEGORIES =	databases
REVISION =	2

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-data_objects,${MODRUBY_FLAVOR}>=${VERSION}

WANTLIB =		sqlite3

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/ruby-bacon,${MODRUBY_FLAVOR}
do-test:
	cd ${WRKSRC} && bacon${GEM_BIN_SUFFIX} spec/*_spec.rb

.include <bsd.port.mk>
