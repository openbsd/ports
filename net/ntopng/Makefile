COMMENT=	network traffic probe with web ui and deep packet inspection

# see GIT_RELEASE below if moving back to a commit id rather than a tag
NTOPNG_V=	5.2.1
DIST_TUPLE=	github ntop ntopng ${NTOPNG_V} . \
		github ntop nDPI 4.2 nDPI
REVISION=	1

CATEGORIES=	net

HOMEPAGE=	https://www.ntop.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c crypto curl expat gcrypt gpg-error hiredis json-c m
WANTLIB += mariadb maxminddb netsnmp pcap radcli rrd sodium sqlite3
WANTLIB += ssl z zmq zstd

COMPILER =	base-clang ports-gcc

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
		ac_cv_lib_ldap_ldap_initialize=no \
		ac_cv_lib_atomic___atomic_exchange_8=no

# ndpi does not have a particularly stable API so is pulled in directly
# to this port; the shared lib for ndpi is built but not installed
# so it seems easier to keep the SHARED_LIBS infrastructure here.
SHARED_LIBS=	ndpi 1.0

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16
AUTORECONF=		sh -c "GIT_RELEASE=${NTOPNG_V} ./autogen.sh; cd nDPI; ./autogen.sh"

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/nDPI

MODULES=	lang/lua
MODLUA_VERSION=	5.3
MODLUA_SA=	Yes
MODLUA_RUNDEP=	No

NO_TEST=	Yes

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
