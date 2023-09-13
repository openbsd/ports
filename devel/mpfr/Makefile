COMMENT=	library for multiple-precision floating-point computations

DISTNAME=	mpfr-4.2.1
SHARED_LIBS=	mpfr		2.2	# 8.1
CATEGORIES=	devel math
HOMEPAGE=	https://www.mpfr.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}${DISTNAME}/
DIST_SUBDIR=	${DISTNAME}
.for i in
PATCHFILES+=	patch$i
.endfor
PATCH_DIST_STRIP=-p1
EXTRACT_SUFX=	.tar.xz

LIB_DEPENDS=	devel/gmp,no_cxx,bootstrap
WANTLIB=	gmp

DEBUG_PACKAGES=	${BUILD_PACKAGES}

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-gmp=${LOCALBASE}
# Enabling TLS by way of libcompiler_rt's emutls requires a major version
# bump and lang/gcc will need a new bootstrap.
CONFIGURE_ARGS+=--disable-thread-safe

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/share/doc/mpfr/examples ${PREFIX}/share/examples/mpfr

.include <bsd.port.mk>
