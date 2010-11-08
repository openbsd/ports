# $OpenBSD: Makefile,v 1.8 2010/11/08 23:34:25 jeremy Exp $

COMMENT =	DataObjects driver for SQLite3

VERSION =	0.10.2
DISTNAME =	do_sqlite3-${VERSION}
REVISION =	2
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-data_objects->=${VERSION}:databases/ruby-data_objects,${FLAVOR}

WANTLIB =		sqlite3
LIB_DEPENDS =		::databases/sqlite3

REGRESS_DEPENDS =	:${FULLPKGNAME}:${BUILD_PKGPATH} \
			:${MODRUBY_PKG_PREFIX}-bacon-*:devel/ruby-bacon,${FLAVOR}
do-regress:
	cd ${WRKSRC} && bacon${GEM_BIN_SUFFIX} spec/*_spec.rb

.include <bsd.port.mk>
