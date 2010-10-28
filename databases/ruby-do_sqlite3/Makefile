# $OpenBSD: Makefile,v 1.7 2010/10/28 22:15:36 jeremy Exp $

COMMENT =	DataObjects driver for SQLite3

VERSION =	0.10.0
DISTNAME =	do_sqlite3-${VERSION}
PKGNAME =	ruby-${DISTNAME}
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
RUN_DEPENDS =		:ruby-data_objects->=${VERSION}:databases/ruby-data_objects

WANTLIB =		sqlite3
LIB_DEPENDS =		::databases/sqlite3

MODRUBY_REGRESS =	rspec
REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rcov \
			:${PKGNAME}:${BASE_PKGPATH}

.include <bsd.port.mk>
