COMMENT=	subprocess.run replacement that captures and displays output

MODPY_EGG_VERSION=	0.3.5
DISTNAME=	subprocess-tee-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

HOMEPAGE=	https://github.com/pycontribs/subprocess-tee

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes
MODPY_PYTEST_ARGS= -k 'not test_molecule'

FLAVORS=	python3
FLAVOR=		python3

BUILD_DEPENDS=	devel/py-setuptools_scm_git_archive${MODPY_FLAVOR}

# for tests (can't use MODPY_PYTEST until we have pytest-4.6.6+)
#PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
