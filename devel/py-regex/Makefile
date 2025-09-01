COMMENT=	alternative regular expression module to replace re

MODPY_DISTV=	2025.8.29
DISTNAME=	regex-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://github.com/mrabarnett/mrab-regex

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

.include <bsd.port.mk>
