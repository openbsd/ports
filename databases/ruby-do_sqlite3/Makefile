# $OpenBSD: Makefile,v 1.6 2010/09/28 20:12:16 jeremy Exp $

SHARED_ONLY =	Yes

COMMENT =	DataObjects driver for SQLite3

VERSION =	0.10.0
DISTNAME =	do_sqlite3-${VERSION}
PKGNAME =	ruby-${DISTNAME}
REVISION =	1
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ruby-data_objects->=${VERSION}:databases/ruby-data_objects

WANTLIB =		c m
LIB_DEPENDS =		${MODRUBY_LIB_DEPENDS} \
			sqlite3::databases/sqlite3

MODRUBY_REGRESS =	rspec
REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rcov \
			:${PKGNAME}:${BASE_PKGPATH}

.include <bsd.port.mk>
