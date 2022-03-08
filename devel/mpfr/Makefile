COMMENT=	library for multiple-precision floating-point computations

DISTNAME=	mpfr-4.1.0
SHARED_LIBS=	mpfr		2.1	# 7.0
CATEGORIES=	devel math
HOMEPAGE=	https://www.mpfr.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}${DISTNAME}/ \
		${MASTER_SITE_GNU:=mpfr/}
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
