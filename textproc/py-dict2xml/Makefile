COMMENT=	small utility to convert a Python dictionary into an XML

MODPY_DISTV=	1.7.6

DISTNAME=	dict2xml-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/delfick/python-dict2xml

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

# tests require unported noseOfYeti to handle "# coding: spec" and
# custom DSL used in tests; https://pypi.org/project/noseOfYeti/
NO_TEST=	Yes

.include <bsd.port.mk>
