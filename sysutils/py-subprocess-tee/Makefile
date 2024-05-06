COMMENT=	subprocess.run replacement that captures and displays output

MODPY_EGG_VERSION=	0.4.1
DISTNAME=	subprocess-tee-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

HOMEPAGE=	https://github.com/pycontribs/subprocess-tee

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes
# this needs unported "molecule", and ansible, maybe also pytest-plus
MODPY_PYTEST_ARGS= -k 'not test_molecule'

FLAVORS=	python3
FLAVOR=		python3

BUILD_DEPENDS=	devel/py-setuptools_scm_git_archive${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-enrich${MODPY_FLAVOR} \
		devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR}

.include <bsd.port.mk>
