# $OpenBSD: Makefile,v 1.3 2015/05/22 11:31:14 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Structured Terminal Forms Language/Library

DISTNAME=	stfl-0.22
REVISION=	0

SHARED_LIBS+=	stfl 0.0

CATEGORIES=	devel

HOMEPAGE=	http://www.clifford.at/stfl/

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ncursesw pthread

MASTER_SITES=	${HOMEPAGE}

MODULES=	converters/libiconv

ALL_TARGET=	libstfl.so.${LIBstfl_VERSION}
USE_GMAKE=	Yes
NO_TEST=	Yes

MAKE_FLAGS=	FOUND_SPL=0 \
		FOUND_SWIG=0 \
		FOUND_PERL5=0 \
		FOUND_PYTHON=0 \
		FOUND_RUBY=0

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

post-build:
	cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} ${MAKEFILE} stfl.pc

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libstfl.so.${LIBstfl_VERSION} ${PREFIX}/lib
	${INSTALL_DATA} ${WRKSRC}/stfl.h ${PREFIX}/include/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKSRC}/stfl.pc ${PREFIX}/lib/pkgconfig

.include <bsd.port.mk>
