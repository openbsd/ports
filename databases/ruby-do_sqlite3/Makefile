# $OpenBSD: Makefile,v 1.2 2009/08/10 16:29:23 msf Exp $

SHARED_ONLY =	Yes

COMMENT =	DataObjects driver for SQLite3

DISTNAME =	do_sqlite3-0.9.11
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

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::devel/ruby-rcov \
			:${PKGNAME}:${BASE_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec

.include <bsd.port.mk>
