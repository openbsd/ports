PORTROACH=		limit:^1

COMMENT=		universal command line environment for AWS

MODPY_DISTV=		1.44.20

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

# !!! check setup.py for exact dependencies version
RUN_DEPENDS +=		devel/py-colorama>=0.2.5,<0.4.7
#RUN_DEPENDS +=		net/py-botocore=1.42.${MODPY_DISTV:E}
RUN_DEPENDS +=		net/py-botocore=1.42.30
RUN_DEPENDS +=		net/py-s3transfer>=0.16.0,<0.17.0
RUN_DEPENDS +=		textproc/py-yaml>=3.10,<6.1
RUN_DEPENDS +=		security/py-rsa>=3.1.2,<4.8

.include <bsd.port.mk>
