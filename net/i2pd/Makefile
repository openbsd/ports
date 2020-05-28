# $OpenBSD: Makefile,v 1.2 2020/05/28 20:57:30 solene Exp $

COMMENT =	client for the I2P anonymous network

GH_ACCOUNT =	PurpleI2P
GH_PROJECT =	i2pd
GH_TAGNAME =	2.31.0

CATEGORIES =	net
HOMEPAGE =	https://i2pd.website

MAINTAINER =	Mikal Villa <mikalv@mikalv.net>

# BSD
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_program_options-mt boost_system-mt c crypto m
WANTLIB += ssl z

COMPILER =	base-clang ports-gcc
MODULES =	devel/cmake
LIB_DEPENDS =	devel/boost

# for tests
USE_GMAKE =	Yes

WRKSRC =	${WRKDIST}/build

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/i2pd/certificates/family
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/i2pd/certificates/reseed
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/i2pd/certificates/router
	${INSTALL_DATA} ${WRKDIST}/contrib/certificates/family/* \
		${PREFIX}/share/examples/i2pd/certificates/family
	${INSTALL_DATA} ${WRKDIST}/contrib/certificates/reseed/* \
		${PREFIX}/share/examples/i2pd/certificates/reseed
	${INSTALL_DATA} ${WRKDIST}/contrib/certificates/router/* \
		${PREFIX}/share/examples/i2pd/certificates/router
	${INSTALL_DATA} ${WRKDIST}/contrib/i2pd.conf \
		${PREFIX}/share/examples/i2pd/i2pd.conf
	${INSTALL_DATA} ${WRKDIST}/contrib/tunnels.conf \
		${PREFIX}/share/examples/i2pd/tunnels.conf

do-test:
	cd ${WRKDIST}/tests && ${MAKE_PROGRAM} CXX="${CXX}" \
		INCFLAGS="-L${LOCALBASE}/lib -I${LOCALBASE}/include"

.include <bsd.port.mk>
