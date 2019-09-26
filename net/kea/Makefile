# $OpenBSD: Makefile,v 1.17 2019/09/26 13:23:37 sthen Exp $

COMMENT=	high-performance and extensible DHCP server engine from ISC

VERSION=	1.6.0

DISTNAME=	kea-${VERSION}
PKGNAME=	${DISTNAME:S/-P/pl/}

.for i in kea-exceptions kea-util kea-util-io kea-threads kea-log \
  kea-cryptolink kea-dns++ kea-asiolink kea-cc kea-database kea-hooks \
  kea-dhcp++ kea-cfgclient kea-stats kea-asiodns kea-dhcp_ddns \
  kea-eval kea-process kea-dhcpsrv kea-http
SHARED_LIBS +=  $i 3.0
.endfor

CATEGORIES=	net

HOMEPAGE=	https://kea.isc.org/

# MPL 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += boost_system c crypto log4cplus m pthread ${COMPILER_LIBCXX}

MASTER_SITES=	${MASTER_SITE_ISC:=kea/${VERSION}/}

LIB_DEPENDS=	devel/boost \
		devel/log4cplus

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= --with-openssl=/usr \
                 --with-boost-libs=-lboost_system \
                 --with-boost-lib-dir=${LOCALBASE}/lib

LIBTOOL_FLAGS=	--tag=disable-static

COMPILER=	base-clang ports-gcc

FLAVORS=	mysql postgresql
FLAVOR?=

.if ${FLAVOR:Mmysql}
WANTLIB += iconv mariadb ssl z
LIB_DEPENDS+=	databases/mariadb
CONFIGURE_ARGS+= --with-dhcp-mysql=${LOCALBASE}/bin/mysql_config
.endif

.if ${FLAVOR:Mpostgresql}
WANTLIB += pq ssl
BUILD_DEPENDS+=	databases/postgresql,-server
LIB_DEPENDS+=	databases/postgresql
CONFIGURE_ARGS+= --with-dhcp-pgsql=${LOCALBASE}/bin/pg_config
.endif

pre-install:
	mkdir -p ${PREFIX}/share/examples/kea

.include <bsd.port.mk>
