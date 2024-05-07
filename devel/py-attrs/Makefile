COMMENT=	classes without boilerplate

MODPY_EGG_VERSION=	23.2.0

DISTNAME=	attrs-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://www.attrs.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

BUILD_DEPENDS=	devel/py-hatch-fancy-pypi-readme${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-zopeinterface${MODPY_FLAVOR}

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
