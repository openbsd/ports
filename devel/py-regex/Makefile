COMMENT=	alternative regular expression module to replace re

MODPY_DISTV=	2024.11.6
DISTNAME=	regex-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://github.com/mrabarnett/mrab-regex

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

.include <bsd.port.mk>
