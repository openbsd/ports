# !!! do not update blindly, net/py-boto3 depends on a specific version

COMMENT=		Amazon S3 transfer manager for Python

MODPY_DISTV=		0.19.2
DISTNAME=		s3transfer-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		net devel

HOMEPAGE=		https://github.com/boto/s3transfer

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		net/py-botocore

.include <bsd.port.mk>
