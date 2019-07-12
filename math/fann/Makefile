# $OpenBSD: Makefile,v 1.7 2019/07/12 20:47:40 sthen Exp $

COMMENT=	Fast Artificial Neural Network Library

GH_ACCOUNT=	libfann
GH_PROJECT=	fann
GH_TAGNAME=	2.2.0

SHARED_LIBS +=  floatfann            1.0      # .2.1
SHARED_LIBS +=  doublefann           1.0      # .2.1
SHARED_LIBS +=  fixedfann            1.0      # .2.1
SHARED_LIBS +=  fann                 1.0      # .2.1

CATEGORIES=	math devel

HOMEPAGE=	http://leenissen.dk/fann/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake

USE_GMAKE=	Yes
TEST_DEPENDS=	math/fann

do-test:
	cd ${WRKSRC}/examples; ${MAKE_PROGRAM} runtest GCC="${CC}" \
	    CFLAGS="${CFLAGS} -I${TRUEPREFIX}/include -L${TRUEPREFIX}/lib"

.include <bsd.port.mk>
