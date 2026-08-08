PORTROACH=		limit:^1

COMMENT=		universal command line environment for AWS

MODPY_DISTV=		1.46.0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

# !!! check setup.py for exact dependencies version
RUN_DEPENDS +=		devel/py-colorama>=0.2.5,<0.4.7
RUN_DEPENDS +=		devel/py-dateutil>=2.1,<3.0.0
RUN_DEPENDS +=		devel/py-jmespath>=0.7.1,<2.0.0
RUN_DEPENDS +=		security/py-rsa>=3.1.2,<4.8
RUN_DEPENDS +=		textproc/py-docutils
RUN_DEPENDS +=		textproc/py-yaml>=3.10,<6.1
RUN_DEPENDS +=		www/py-urllib3>=1.25.4,<3

.include <bsd.port.mk>
