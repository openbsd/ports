# $OpenBSD: Makefile,v 1.4 2016/09/23 09:16:56 sthen Exp $

COMMENT=	network traffic probe with web ui and dpi

DISTNAME=	ntopng-2.4-stable
PKGNAME=	${DISTNAME:S/-stable//}
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	http://www.ntop.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP c crypto curl hiredis json-c luajit-5.1 m
WANTLIB += mysqlclient pcap pthread rrd sqlite3 ssl stdc++ z zmq

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ntop/}

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
