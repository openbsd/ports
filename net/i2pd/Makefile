# $OpenBSD: Makefile,v 1.8 2021/12/12 22:51:16 tb Exp $

COMMENT =	client for the I2P anonymous network

GH_ACCOUNT =	PurpleI2P
GH_PROJECT =	i2pd
GH_TAGNAME =	2.38.0
REVISION =	1

CATEGORIES =	net
HOMEPAGE =	https://i2pd.website

MAINTAINER =	Dimitri Karamazov <deserter666@danwin1210.me>

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
	${INSTALL_DATA_DIR} ${PREFIX}/include/i2pd
	${INSTALL_DATA} ${WRKDIST}/libi2pd{,_client}/*.h \
		 ${PREFIX}/include/i2pd
.for dir in family reseed router
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/i2pd/certificates/${dir}
	${INSTALL_DATA} ${WRKDIST}/contrib/certificates/${dir}/* \
		${PREFIX}/share/examples/i2pd/certificates/${dir}
.endfor
	${INSTALL_DATA} ${WRKDIST}/contrib/i2pd.conf \
		${PREFIX}/share/examples/i2pd/i2pd.conf
	${INSTALL_DATA} ${WRKDIST}/contrib/tunnels.conf \
		${PREFIX}/share/examples/i2pd/tunnels.conf

do-test:
	cd ${WRKDIST}/tests && ${MAKE_PROGRAM} CXX="${CXX}" \
		INCFLAGS="-L${LOCALBASE}/lib -I${LOCALBASE}/include ${CFLAGS}"

.include <bsd.port.mk>
