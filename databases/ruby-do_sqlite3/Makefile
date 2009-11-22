# $OpenBSD: Makefile,v 1.4 2009/11/22 07:35:32 msf Exp $

SHARED_ONLY =	Yes

COMMENT =	DataObjects driver for SQLite3

VERSION =	0.10.0
DISTNAME =	do_sqlite3-${VERSION}
PKGNAME =	ruby-${DISTNAME}p0
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=dorb/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ruby-data_objects->=${VERSION}:databases/ruby-data_objects

WANTLIB =		c m
LIB_DEPENDS =		${MODRUBY_LIB_DEPENDS} \
			sqlite3::databases/sqlite3

MODRUBY_REGRESS =	rspec
REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::devel/ruby-rcov \
			:${PKGNAME}:${BASE_PKGPATH}

.include <bsd.port.mk>
