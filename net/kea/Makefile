# $OpenBSD: Makefile,v 1.10 2017/08/27 11:14:51 sthen Exp $

COMMENT=	high-performance and extensible DHCP server engine from ISC

VERSION=	1.2.0

DISTNAME=	kea-${VERSION}
PKGNAME=	${DISTNAME:S/-P/pl/}

SHARED_LIBS +=  kea-asiodns               0.0 # 0.0
SHARED_LIBS +=  kea-asiolink              2.0 # 4.0
SHARED_LIBS +=  kea-cc                    1.0 # 2.0
SHARED_LIBS +=  kea-cfgclient             1.0 # 3.0
SHARED_LIBS +=  kea-cryptolink            1.0 # 2.0
SHARED_LIBS +=  kea-dhcp++                2.0 # 5.0
SHARED_LIBS +=  kea-dhcp_ddns             0.2 # 1.2
SHARED_LIBS +=  kea-dhcpsrv               2.0 # 7.0
SHARED_LIBS +=  kea-dns++                 1.0 # 1.1
SHARED_LIBS +=  kea-eval                  2.0 # 5.0
SHARED_LIBS +=  kea-exceptions            0.0 # 0.0
SHARED_LIBS +=  kea-hooks                 2.0 # 3.0
SHARED_LIBS +=  kea-http                  0.0 # 0.0
SHARED_LIBS +=  kea-log                   2.0 # 3.0
SHARED_LIBS +=  kea-process               0.0 # 0.0
SHARED_LIBS +=  kea-stats                 0.0 # 1.0
SHARED_LIBS +=  kea-threads               1.0 # 1.0
SHARED_LIBS +=  kea-util-io               0.0 # 0.0
SHARED_LIBS +=  kea-util                  1.1 # 2.1

CATEGORIES=	net

HOMEPAGE=	http://kea.isc.org/

MAINTAINER=	Patrik Lundin <patrik@sigterm.se>

# MPL 2.0
PERMIT_PACKAGE_CDROM=	Yes

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
WANTLIB += mysqlclient ssl z

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
