# $OpenBSD: Makefile,v 1.9 2017/10/17 10:39:12 sthen Exp $

COMMENT=	network traffic probe with web ui and deep packet inspection

GH_ACCOUNT=	ntop
GH_PROJECT=	ntopng
GH_TAGNAME=	3.0
NDPI_V=		2.0
DISTFILES=	ntopng-${GH_TAGNAME}.tar.gz ndpi-${NDPI_V}.tar.gz:0

CATEGORIES=	net

HOMEPAGE=	http://www.ntop.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GeoIP c crypto curl hiredis json-c luajit-5.1 m mysqlclient
WANTLIB += pcap rrd sodium sqlite3 ssl z zmq

MASTER_SITES0=	https://github.com/ntop/ndpi/archive/${NDPI_V}/

BUILD_DEPENDS=	devel/libtool \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS=	databases/redis \
		net/GeoIP,-db \
		net/GeoIP,-city \
		net/GeoIP,-asn
LIB_DEPENDS=	databases/libhiredis \
		databases/mariadb \
		databases/sqlite3 \
		devel/json-c \
		lang/luajit \
		net/GeoIP \
		net/curl \
		net/rrdtool \
		net/zeromq

FAKE_FLAGS=	INSTALL_DIR=${WRKINST}${PREFIX} \
		MAN_DIR=${WRKINST}${PREFIX}/man

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		ac_cv_lib_ldap_ldap_initialize=no

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/nDPI

NO_TEST=	Yes

post-extract:
	cd ${WRKDIR}; mv nDPI-${NDPI_V} ${WRKSRC}/nDPI

post-patch:
	cd ${WRKSRC}; env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} sh -c \
		"./autogen.sh; cd nDPI; ./autogen.sh"

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
