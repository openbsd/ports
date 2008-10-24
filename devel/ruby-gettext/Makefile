# $OpenBSD: Makefile,v 1.6 2008/10/24 15:36:14 bernd Exp $

COMMENT=		Ruby interface to gettext

VERSION=		1.93.0
DISTNAME=		gettext-${VERSION}
PKGNAME=		ruby-gettext-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.yotabanana.com/hiki/ruby-gettext.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=gettext/}

MODULES=		lang/ruby

RUN_DEPENDS=		:ruby-iconv->=1.8.4:lang/ruby,-iconv

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

REGRESS_DEPENDS=	::devel/ruby-rake \
			::www/ruby-rails \
			::databases/mysql,-server \
			:${PKGNAME}:${BASE_PKGPATH}

pre-regress:
	@perl -pi -e 's,/var/lib/mysql,/var/run/mysql,g' \
		${WRKBUILD}/samples/rails/config/database.yml \
		${WRKBUILD}/test/test_parser.rb \
		${WRKBUILD}/test/rails/config/database.yml \
		${WRKBUILD}/test/test_active_record.rb \
		${WRKBUILD}/test/Rakefile
	@perl -pi -e 's,2\.1\.0,2.1.2,g' \
		${WRKBUILD}/test/rails/config/environment.rb

do-regress:
	@cd ${WRKBUILD}/test/rails && ${LOCALBASE}/bin/rake createdb
	@cd ${WRKBUILD} && ${SETENV} TZ=Japan ${LOCALBASE}/bin/rake testunit
	@cd ${WRKBUILD}/test/rails && ${LOCALBASE}/bin/rake dropdb

.include <bsd.port.mk>
