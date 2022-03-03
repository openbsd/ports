# $OpenBSD: Makefile,v 1.30 2022/03/03 14:57:58 sthen Exp $

COMMENT=	high-performance and extensible DHCP server engine from ISC

VERSION=	2.0.2
PORTROACH=	limitw:1,even

DISTNAME=	kea-${VERSION}
PKGNAME-main=	kea-${VERSION:S/-P/pl/}

.for i in kea-asiodns kea-asiolink kea-cc kea-cfgclient kea-cryptolink \
    kea-d2srv kea-database kea-dhcp++ kea-dhcp_ddns kea-dhcpsrv kea-dns++ \
    kea-eval kea-exceptions kea-hooks kea-http kea-log kea-mysql kea-pgsql \
    kea-process kea-stats kea-threads kea-util kea-util-io
SHARED_LIBS +=  $i 9.0
.endfor

CATEGORIES=	net

HOMEPAGE=	https://kea.isc.org/

# MPL 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += boost_system c crypto log4cplus m pthread ssl ${COMPILER_LIBCXX}

MASTER_SITES=	${MASTER_SITE_ISC:=kea/${VERSION}/}

LIB_DEPENDS=	devel/boost \
		devel/log4cplus

FLAVOR?=
FLAVORS=	mysql postgresql

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-openssl=/usr \
                 --with-boost-libs=-lboost_system \
                 --with-boost-lib-dir=${LOCALBASE}/lib

USE_GMAKE=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

COMPILER=	base-clang ports-gcc

.include <bsd.port.arch.mk>

# cassandra
RMFILES=	share/kea/scripts/cql

.if ${FLAVOR:Mmysql}
CONFIGURE_ARGS+= --with-mysql=${LOCALBASE}/bin/mysql_config
WANTLIB+=	 mariadb z
LIB_DEPENDS+=	 databases/mariadb
.else
RMFILES+=	share/doc/kea/examples/kea[46]/*mysql* \
		share/kea/scripts/mysql
.endif

.if ${FLAVOR:Mpostgresql}
# requires include/postgresql/server/utils/errcodes.h
BUILD_DEPENDS+=	 databases/postgresql,-server
CONFIGURE_ARGS+= --with-pgsql=${LOCALBASE}/bin/pg_config
WANTLIB+=	 pq
LIB_DEPENDS+=	 databases/postgresql
.else
RMFILES+=	share/doc/kea/examples/kea[46]/*pgsql* \
		share/kea/scripts/pgsql
.endif

pre-configure:
	sed -i -e 's,"socket-name": "/tmp/,"socket-name": "@localstatedir@/run/kea/,' \
	    ${WRKSRC}/src/bin/keactrl/*.conf.pre

pre-install:
	mkdir -p ${PREFIX}/share/examples/kea

post-install:
.for i in ${RMFILES}
	rm -r ${PREFIX}/$i
.endfor

.include <bsd.port.mk>
