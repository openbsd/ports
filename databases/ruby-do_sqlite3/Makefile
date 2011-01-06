# $OpenBSD: Makefile,v 1.11 2011/01/06 04:24:22 jeremy Exp $

COMMENT =	DataObjects driver for SQLite3

VERSION =	0.10.2
DISTNAME =	do_sqlite3-${VERSION}
REVISION =	4
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-data_objects,${MODRUBY_FLAVOR}>=${VERSION}

WANTLIB =		sqlite3
LIB_DEPENDS =		databases/sqlite3

REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/ruby-bacon,${MODRUBY_FLAVOR}
do-regress:
	cd ${WRKSRC} && bacon${GEM_BIN_SUFFIX} spec/*_spec.rb

.include <bsd.port.mk>
