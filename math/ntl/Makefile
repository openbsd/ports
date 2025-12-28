COMMENT =	Victor Shoup's Number Theory Library

DISTNAME =	ntl-11.6.0
REVISION =	0
SHARED_LIBS =	ntl	10.1	# 0.0
CATEGORIES =	math

HOMEPAGE =	https://www.shoup.net/ntl/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		m gmp ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

SITES =			${HOMEPAGE}

LIB_DEPENDS =		devel/gmp

MAKE_FILE =		makefile

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS}" \
			DEF_PREFIX="${LOCALBASE}" \
			GMP_PREFIX="${LOCALBASE}" \
			LIBTOOL=${LIBTOOL} \
			LIBntl_VERSION=${LIBntl_VERSION} \
			NTL_GMP_LIP=on \
			SHARED=on \
			NATIVE=off

WRKSRC =		${WRKDIST}/src

TEST_TARGET =	check

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/include/NTL
	@cd ${WRKDIST}/include/NTL; ${INSTALL_DATA} *.h ${PREFIX}/include/NTL
	@cd ${WRKBUILD}; ${INSTALL_DATA} .libs/libntl.a  ${PREFIX}/lib/libntl.a
	@cd ${WRKBUILD}; ${INSTALL_DATA} .libs/libntl.so.${LIBntl_VERSION} \
		${PREFIX}/lib/libntl.so.${LIBntl_VERSION}
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/NTL
	@cd ${WRKDIST}/doc; ${INSTALL_DATA} * ${PREFIX}/share/doc/NTL

.include <bsd.port.mk>
