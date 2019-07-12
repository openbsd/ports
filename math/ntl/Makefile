# $OpenBSD: Makefile,v 1.52 2019/07/12 20:47:43 sthen Exp $

COMMENT =	Victor Shoup's Number Theory Library

DISTNAME =	ntl-9.11.0
REVISION =	3
SHARED_LIBS =	ntl	9.2	# 0.0
CATEGORIES =	math

HOMEPAGE =	http://www.shoup.net/ntl/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		m gmp ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${HOMEPAGE}

LIB_DEPENDS =		devel/gmp

MAKE_FILE =		makefile

CONFIGURE_STYLE = 	simple
CONFIGURE_ARGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			NTL_GMP_LIP=on GMP_PREFIX="${LOCALBASE}" \
			LIBntl_VERSION=${LIBntl_VERSION} \
			SHARED=on DEF_PREFIX="${LOCALBASE}" \
			NATIVE=off

WRKBUILD =		${WRKSRC}/src

TEST_TARGET =	check

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/include/NTL
	@cd ${WRKSRC}/include/NTL; ${INSTALL_DATA} *.h ${PREFIX}/include/NTL
	@cd ${WRKBUILD}; ${INSTALL_DATA} .libs/libntl.a  ${PREFIX}/lib/libntl.a
	@cd ${WRKBUILD}; ${INSTALL_DATA} .libs/libntl.so.${LIBntl_VERSION} ${PREFIX}/lib/libntl.so.${LIBntl_VERSION}
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/NTL
	@cd ${WRKSRC}/doc; ${INSTALL_DATA} * ${PREFIX}/share/doc/NTL

.include <bsd.port.mk>
