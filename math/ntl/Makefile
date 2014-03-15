# $OpenBSD: Makefile,v 1.21 2014/03/15 09:13:13 benoit Exp $

COMMENT =	Victor Shoup's Number Theory Library

DISTNAME =	ntl-6.1.0
SHARED_LIBS =	ntl	1.1	# 0.0
CATEGORIES =	math

HOMEPAGE =	http://www.shoup.net/ntl/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m gmp stdc++

MASTER_SITES =		${HOMEPAGE}

LIB_DEPENDS =		devel/gmp

MAKE_FILE =		makefile


CONFIGURE_STYLE = 	simple
CONFIGURE_ARGS =	CC="${CC}" CFLAGS="${CFLAGS}" \
			CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			NTL_GMP_LIP=on GMP_PREFIX="${LOCALBASE}" \
			NTL_STD_CXX=on LIBntl_VERSION=${LIBntl_VERSION} \
			SHARED=on DEF_PREFIX="${LOCALBASE}"

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
