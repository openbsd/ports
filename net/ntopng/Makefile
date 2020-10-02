# $OpenBSD: Makefile,v 1.23 2020/10/02 18:47:14 sthen Exp $

# shared lib is built but not actually installed at present; patches
# are needed for the build so it seems easier to keep the SHARED_LIBS
# infrastructure here.
SHARED_LIBS=	ndpi 0.0

COMMENT=	network traffic probe with web ui and deep packet inspection

GH_ACCOUNT=	ntop
GH_PROJECT=	ntopng
GH_COMMIT=	17bc5c0b2e233be3351888435b2e598dd4a87296
DISTNAME=	ntopng-4.0pl20200917
DISTFILES=	ntopng-{}${GH_COMMIT}.tar.gz ndpi-{}6735bb35c65c60a777557c3277546d5801729995.tar.gz:0
# using newer commits from the 4.0-stable/3.2-stable branches; normally has
#GH_TAGNAME=	4.0
#DISTFILES=	ntopng-${GH_TAGNAME}.tar.gz ndpi-${NDPI_V}.tar.gz:0
#NDPI_V=	3.2

CATEGORIES=	net

HOMEPAGE=	https://www.ntop.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c crypto curl hiredis json-c m mariadb maxminddb
WANTLIB += pcap radcli rrd sodium sqlite3 ssl z zmq zstd

COMPILER =	base-clang ports-gcc

MASTER_SITES0=	https://github.com/ntop/ndpi/archive/${NDPI_V}/

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
		net/radcli \
		net/rrdtool \
		net/zeromq

MAKE_FLAGS=	CC="${CC}" CXX="${CXX}"
MAKE_ENV=	LIBndpi_VERSION="${LIBndpi_VERSION}"
FAKE_FLAGS=	INSTALL_DIR=${WRKINST}${PREFIX} \
		MAN_DIR=${WRKINST}${PREFIX}/man

USE_GMAKE=	Yes
DEBUG_PACKAGES=	${BUILD_PACKAGES}
CONFIGURE_STYLE= autoreconf
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		ac_cv_lib_ldap_ldap_initialize=no

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
AUTORECONF=		sh -c "./autogen.sh; cd nDPI; ./autogen.sh"

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
