# $OpenBSD: Makefile,v 1.5 2008/06/14 23:46:38 landry Exp $

COMMENT=		Ruby interface to gettext

VERSION=		1.90.0
DISTNAME=		gettext-${VERSION}
PKGNAME=		ruby-gettext-${VERSION}p0
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
	@perl -pi -e 's,2\.0\.1,2.0.2,g' \
		${WRKBUILD}/test/rails/config/environment.rb

do-regress:
	@cd ${WRKBUILD}/test/rails && ${LOCALBASE}/bin/rake createdb
	@cd ${WRKBUILD} && ${SETENV} TZ=Japan ${LOCALBASE}/bin/rake testunit
	@cd ${WRKBUILD}/test/rails && ${LOCALBASE}/bin/rake dropdb

.include <bsd.port.mk>
