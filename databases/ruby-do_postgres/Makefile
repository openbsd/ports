# $OpenBSD: Makefile,v 1.16 2014/06/19 20:25:49 jeremy Exp $

COMMENT=		DataObjects driver for PostgreSQL

V=			0.10.14
DISTNAME=		do_postgres-${V}
CATEGORIES=		databases

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

# databases/postgresql,-server needed for include files
BUILD_DEPENDS=		${RUN_DEPENDS} \
			databases/postgresql,-server
RUN_DEPENDS=		databases/ruby-data_objects,${MODRUBY_FLAVOR}=${V}

WANTLIB=		pq
LIB_DEPENDS=		databases/postgresql,-main

# Requires running PostgreSQL database
TEST_IS_INTERACTIVE = Yes
MODRUBY_TEST = rspec2
MODRUBY_TEST_TARGET = spec/*_spec.rb
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
