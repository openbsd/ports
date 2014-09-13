# $OpenBSD: Makefile,v 1.18 2014/09/13 18:09:20 brad Exp $

COMMENT=		ruby-data_objects driver for MySQL

V=			0.10.14
DISTNAME=		do_mysql-${V}
REVISION=		0
CATEGORIES=		databases

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/ruby-data_objects,${MODRUBY_FLAVOR}=${V}

WANTLIB=		mysqlclient crypto ssl z
LIB_DEPENDS=		databases/mariadb

# Requires running MySQL database
TEST_IS_INTERACTIVE = Yes
MODRUBY_TEST =	rspec2
MODRUBY_TEST_TARGET = spec/*_spec.rb
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
