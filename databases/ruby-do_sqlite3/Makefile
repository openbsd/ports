# $OpenBSD: Makefile,v 1.3 2009/10/13 21:16:46 pirofti Exp $

SHARED_ONLY =	Yes

COMMENT =	DataObjects driver for SQLite3

DISTNAME =	do_sqlite3-0.10.0
PKGNAME =	ruby-${DISTNAME}
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
RUN_DEPENDS =		::databases/ruby-data_objects

WANTLIB =		c m
LIB_DEPENDS =		${MODRUBY_LIB_DEPENDS} \
			sqlite3::databases/sqlite3

MODRUBY_REGRESS =	rspec
REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::devel/ruby-rcov \
			:${PKGNAME}:${BASE_PKGPATH}

.include <bsd.port.mk>
