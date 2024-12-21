COMMENT=	automatically upgrade syntax for newer versions of Python

MODPY_DISTV=	3.19.1
DISTNAME=	pyupgrade-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://github.com/asottile/pyupgrade

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-tokenize-rt

.include <bsd.port.mk>
