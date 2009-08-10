# $OpenBSD: Makefile,v 1.13 2009/08/10 21:00:25 benoit Exp $

COMMENT =	Victor Shoup's Number Theory Library

DISTNAME =	ntl-5.5.1
PKGNAME =	${DISTNAME}p0
SHARED_LIBS =	ntl	0.0	# .0.1
CATEGORIES =	math

HOMEPAGE =	http://www.shoup.net/ntl/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes

WANTLIB =		m

MASTER_SITES =		${HOMEPAGE}

LIB_DEPENDS =		gmp.>=7::devel/gmp

MAKE_FILE =		makefile

USE_LIBTOOL =		Yes

CONFIGURE_STYLE = 	simple
CONFIGURE_ARGS =	CC="${CC}" CFLAGS="${CFLAGS}" \
			CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			NTL_GMP_LIP=on GMP_PREFIX="${LOCALBASE}" \
			NTL_STD_CXX=on LIBntl_VERSION=${LIBntl_VERSION} \
			SHARED=on DEF_PREFIX="${LOCALBASE}"

WRKBUILD =		${WRKSRC}/src

REGRESS_TARGET =	check

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/include/NTL
	@cd ${WRKSRC}/include/NTL; ${INSTALL_DATA} *.h ${PREFIX}/include/NTL
	@cd ${WRKBUILD}; ${INSTALL_DATA} .libs/libntl.a  ${PREFIX}/lib/libntl.a
	@cd ${WRKBUILD}; ${INSTALL_DATA} .libs/libntl.so.${LIBntl_VERSION} ${PREFIX}/lib/libntl.so.${LIBntl_VERSION}
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/NTL
	@cd ${WRKSRC}/doc; ${INSTALL_DATA} * ${PREFIX}/share/doc/NTL

.include <bsd.port.mk>
