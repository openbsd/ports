# $OpenBSD: Makefile,v 1.10 2005/11/18 23:26:43 alek Exp $

COMMENT=	"Victor Shoup's Number Theory Library"

DISTNAME=	ntl-5.3.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	math
HOMEPAGE=	http://www.shoup.net/ntl/

MAINTAINER=	Tom Knienieder <tom@knienieder.com>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	:gmp-*:devel/gmp

WRKBUILD=	${WRKSRC}/src
MAKE_FILE=	makefile

CONFIGURE_STYLE= simple
CONFIGURE_ARGS= CC="${CC}" CFLAGS="${CFLAGS}" \
		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
		NTL_GMP_LIP=on GMP_PREFIX="${LOCALBASE}"

REGRESS_TARGET=	check

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/include/NTL
	@cd ${WRKSRC}/include/NTL; ${INSTALL_DATA} *.h ${PREFIX}/include/NTL
	@cd ${WRKBUILD}; ${INSTALL_DATA} ntl.a ${PREFIX}/lib/libntl.a
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/NTL
	@cd ${WRKSRC}/doc; ${INSTALL_DATA} *.txt ${PREFIX}/share/doc/NTL
	@cd ${WRKSRC}/doc; ${INSTALL_DATA} *.html ${PREFIX}/share/doc/NTL

.include <bsd.port.mk>
