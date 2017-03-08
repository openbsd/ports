# $OpenBSD: Makefile,v 1.5 2017/03/08 17:17:14 sthen Exp $

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
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/cmake

.include <bsd.port.mk>
