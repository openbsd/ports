# $OpenBSD: Makefile,v 1.29 2021/11/16 21:30:22 sthen Exp $

COMMENT=	network traffic probe with web ui and deep packet inspection

GH_ACCOUNT=	ntop
GH_PROJECT=	ntopng
GH_COMMIT=	025e96e6cbb61e0f7320acf1d4038fafbbf836fa
NTOPNG_V=	4.2
NTOPNG_D=	20210727
DISTNAME=	ntopng-${NTOPNG_V}.${NTOPNG_D}
REVISION=	0

# ndpi does not have a particularly stable API so is pulled in directly
# to this port; the shared lib for ndpi is built but not installed
# so it seems easier to keep the SHARED_LIBS infrastructure here.
SHARED_LIBS=	ndpi 1.0
NDPI_V=		4.0
NDPI_COMMIT=	b8806bd2de7391abee18353e9a99ee4aec13887c
DISTFILES=	${GH_DISTFILE} \
		ndpi-${NDPI_V}-{}${NDPI_COMMIT}.tar.gz:0

CATEGORIES=	net

HOMEPAGE=	https://www.ntop.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c crypto curl expat gcrypt hiredis json-c m mariadb
WANTLIB += maxminddb netsnmp pcap radcli rrd sodium sqlite3 ssl
WANTLIB += z zmq zstd

COMPILER =	base-clang ports-gcc

MASTER_SITES0=	https://github.com/ntop/ndpi/archive/

RUN_DEPENDS=	databases/redis \
		net/libmaxminddb,-db \
		net/libmaxminddb,-city \
		net/libmaxminddb,-asn
LIB_DEPENDS=	archivers/zstd \
		databases/libhiredis \
		databases/mariadb \
		databases/sqlite3 \
		devel/json-c \
		net/curl \
		net/libmaxminddb \
		net/net-snmp \
		net/radcli \
		net/rrdtool \
		net/zeromq \
		security/libgcrypt

MAKE_FLAGS=	CC="${CC}" CXX="${CXX}"
MAKE_ENV=	LIBndpi_VERSION="${LIBndpi_VERSION}"
FAKE_FLAGS=	INSTALL_DIR=${WRKINST}${PREFIX} \
		MAN_DIR=${WRKINST}${PREFIX}/man

USE_GMAKE=	Yes
DEBUG_PACKAGES=	${BUILD_PACKAGES}
CONFIGURE_STYLE= autoreconf
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		ac_cv_lib_ldap_ldap_initialize=no

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
GIT_RELEASE=		${NTOPNG_V}:${GH_COMMIT:C/(^..........).*/\1/}
AUTORECONF=		sh -c "GIT_RELEASE=${GIT_RELEASE} ./autogen.sh; cd nDPI; ./autogen.sh"

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/nDPI

NO_TEST=	Yes

post-extract:
	cd ${WRKDIR}; mv nDPI-* ${WRKSRC}/nDPI

pre-configure:
	sed -i 's,/var/db,${LOCALSTATEDIR}/db,' \
		${WRKSRC}/include/ntop_defines.h
	cd ${WRKSRC}/nDPI; [ -f Makefile ] || ${SETENV} CC="${CC}" \
	CFLAGS="${CFLAGS}" CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
        INSTALL="${_INSTALL} -c ${_BINOWNGRP}" \
        INSTALL_PROGRAM="${INSTALL_PROGRAM}" INSTALL_MAN="${INSTALL_MAN}" \
        INSTALL_SCRIPT="${INSTALL_SCRIPT}" INSTALL_DATA="${INSTALL_DATA}" \
        ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS}; \
	${SETENV} ${MAKE_ENV} \
	${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} ${ALL_TARGET}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ntopng
	${INSTALL_DATA} ${WRKSRC}/doc/README* ${PREFIX}/share/doc/ntopng
	rm -rf ${PREFIX}/share/ntopng/httpdocs/{geoip,ssl} \
		${PREFIX}/share/doc/ntopng/README.*{pages,pdf}
	ln -s ${LOCALSTATEDIR}/db/GeoIP ${PREFIX}/share/ntopng/httpdocs/geoip

.include <bsd.port.mk>
