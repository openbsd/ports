COMMENT=	an XML Schema validator and decoder

MODPY_EGG_VERSION=	2.5.0
DISTNAME=	xmlschema-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/sissaschool/xmlschema

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	textproc/py-elementpath${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
