# $OpenBSD: Makefile,v 1.11 2013/03/11 02:52:08 espie Exp $

COMMENT=		DataObjects driver for PostgreSQL

DISTNAME=		do_postgres-0.10.8
REVISION =		1
CATEGORIES=		databases

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

# databases/postgresql,-server needed for include files
BUILD_DEPENDS=		${RUN_DEPENDS} \
			databases/postgresql,-server
RUN_DEPENDS=		databases/ruby-data_objects,${MODRUBY_FLAVOR}

WANTLIB=		pq
LIB_DEPENDS=		databases/postgresql,-main

# Requires running PostgreSQL database
TEST_IS_INTERACTIVE = Yes
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/ruby-bacon,${MODRUBY_FLAVOR}
do-test:
	cd ${WRKSRC} && bacon${GEM_BIN_SUFFIX} spec/*_spec.rb

.include <bsd.port.mk>
