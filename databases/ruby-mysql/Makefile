# $OpenBSD: Makefile,v 1.13 2010/10/14 20:33:09 jeremy Exp $

SHARED_ONLY=	Yes

COMMENT=	access a MySQL database from Ruby

DISTNAME=	mysql-2.8.1
PKGNAME=	ruby-${DISTNAME}
REVISION=	3
CATEGORIES=	databases

HOMEPAGE=	http://tmtm.org/mysql/ruby/

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

WANTLIB=	c m mysqlclient

LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS} \
		::databases/mysql

CONFIGURE_STYLE=ruby gem

REGRESS_DEPENDS=::databases/mysql,-server

# A running mysqld is required to run the regression tests.
do-regress:
	@cd ${WRKBUILD} && ${RUBY} test.rb

.include <bsd.port.mk>
