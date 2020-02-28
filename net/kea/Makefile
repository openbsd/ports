# $OpenBSD: Makefile,v 1.20 2020/02/28 13:35:39 sthen Exp $

COMMENT=	high-performance and extensible DHCP server engine from ISC

VERSION=	1.7.5

DISTNAME=	kea-${VERSION}
PKGNAME-main=	kea-${VERSION:S/-P/pl/}

.for i in kea-exceptions kea-util kea-util-io kea-threads kea-log \
  kea-cryptolink kea-dns++ kea-asiolink kea-cc kea-database kea-hooks \
  kea-dhcp++ kea-cfgclient kea-stats kea-asiodns kea-dhcp_ddns \
  kea-eval kea-process kea-dhcpsrv kea-http kea-mysql kea-pgsql
SHARED_LIBS +=  $i 4.0
.endfor

CATEGORIES=	net

HOMEPAGE=	https://kea.isc.org/

# MPL 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += boost_system c crypto log4cplus m pthread ${COMPILER_LIBCXX}

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
CONFIGURE_ARGS+= --with-dhcp-mysql=${LOCALBASE}/bin/mysql_config
WANTLIB+=	 iconv mariadb ssl z
LIB_DEPENDS+=	 databases/mariadb
.else
RMFILES+=	share/doc/kea/examples/kea[46]/*mysql* \
		share/kea/scripts/mysql
.endif

.if ${FLAVOR:Mpostgresql}
# requires include/postgresql/server/utils/errcodes.h
BUILD_DEPENDS+=	 databases/postgresql,-server
CONFIGURE_ARGS+= --with-dhcp-pgsql=${LOCALBASE}/bin/pg_config
WANTLIB+=	 pq ssl
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
