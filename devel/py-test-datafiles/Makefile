COMMENT=		create a 'tmp_path' with predefined files/directories

MODPY_EGG_VERSION=	3.0.0
DISTNAME=		pytest-datafiles-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME:S/py//}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://github.com/omarkohl/pytest-datafiles

# MIT
PERMIT_PACKAGE =	Yes

SITES=		https://github.com/omarkohl/pytest-datafiles/releases/download/${MODPY_EGG_VERSION}/

MODULES=		lang/python

MODPY_PYBUILD=		setuptools

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-test${MODPY_FLAVOR}

.include <bsd.port.mk>
