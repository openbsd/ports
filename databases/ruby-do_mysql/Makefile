# $OpenBSD: Makefile,v 1.10 2013/03/11 02:52:08 espie Exp $

COMMENT=		ruby-data_objects driver for MySQL

DISTNAME=		do_mysql-0.10.8
REVISION =		1
CATEGORIES=		databases

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/ruby-data_objects,${MODRUBY_FLAVOR}

WANTLIB=		mysqlclient crypto ssl z
LIB_DEPENDS=		databases/mysql

# Requires running MySQL database
TEST_IS_INTERACTIVE = Yes
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/ruby-bacon,${MODRUBY_FLAVOR}
do-test:
	cd ${WRKSRC} && bacon${GEM_BIN_SUFFIX} spec/*_spec.rb

.include <bsd.port.mk>
