# $OpenBSD: Makefile,v 1.16 2014/01/15 02:13:57 jeremy Exp $

COMMENT=		ruby-data_objects driver for MySQL

V=			0.10.12
DISTNAME=		do_mysql-${V}
REVISION=		4
CATEGORIES=		databases

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/ruby-data_objects,${MODRUBY_FLAVOR}=${V}

WANTLIB=		mysqlclient crypto ssl z
LIB_DEPENDS=		databases/mysql

# Requires running MySQL database
TEST_IS_INTERACTIVE = Yes
MODRUBY_TEST =	rspec2
MODRUBY_TEST_TARGET = spec/*_spec.rb
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
