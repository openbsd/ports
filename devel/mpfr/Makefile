# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:11 espie Exp $

COMMENT=	library for multiple-precision floating-point computations

DISTNAME=	mpfr-3.1.0
PKGNAME=	${DISTNAME}.3# patch level
SHARED_LIBS=	mpfr		1.1	# 5.0
CATEGORIES=	devel math
HOMEPAGE=	http://www.mpfr.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}${DISTNAME}/
DIST_SUBDIR=	${DISTNAME}
.for i in 01 02 03
PATCHFILES+=	patch$i
.endfor
PATCH_DIST_STRIP=-p1

LIB_DEPENDS=	devel/gmp>=4.2.0
WANTLIB=	gmp

SEPARATE_BUILD=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-gmp=${LOCALBASE}

# Do not install useless docs and misplaced examples.
FAKE_FLAGS=	docdir=""

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpfr
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/mpfr

.include <bsd.port.mk>
