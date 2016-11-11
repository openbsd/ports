# $OpenBSD: Makefile,v 1.18 2016/11/11 19:41:00 naddy Exp $

COMMENT=	library for multiple-precision floating-point computations

DISTNAME=	mpfr-3.1.5
SHARED_LIBS=	mpfr		1.2	# 5.5
CATEGORIES=	devel math
HOMEPAGE=	http://www.mpfr.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}${DISTNAME}/
EXTRACT_SUFX=	.tar.xz

LIB_DEPENDS=	devel/gmp
WANTLIB=	gmp

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-gmp=${LOCALBASE}

# Do not install useless docs and misplaced examples.
FAKE_FLAGS=	docdir=""

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mpfr
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/mpfr

.include <bsd.port.mk>
