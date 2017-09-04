# $OpenBSD: Makefile,v 1.20 2017/09/04 21:00:57 naddy Exp $

COMMENT=	library for multiple-precision floating-point computations

DISTNAME=	mpfr-3.1.5
PKGNAME=	${DISTNAME}.2
SHARED_LIBS=	mpfr		1.2	# 5.5
CATEGORIES=	devel math
HOMEPAGE=	http://www.mpfr.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}${DISTNAME}/
DIST_SUBDIR=	${DISTNAME}
.for i in 01 02
PATCHFILES+=	patch$i
.endfor
PATCH_DIST_STRIP=-p1
EXTRACT_SUFX=	.tar.xz

LIB_DEPENDS=	devel/gmp
WANTLIB=	gmp

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-gmp=${LOCALBASE}
# Enabling TLS by way of libcompiler_rt's emutls requires a major version
# bump and lang/gcc will need a new bootstrap.
CONFIGURE_ARGS+=--disable-thread-safe

# Do not install useless docs and misplaced examples.
FAKE_FLAGS=	docdir=""

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpfr
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/mpfr

.include <bsd.port.mk>
