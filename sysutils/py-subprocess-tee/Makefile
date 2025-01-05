COMMENT=	subprocess.run replacement that captures and displays output

MODPY_DISTV=	0.4.2
DISTNAME=	subprocess_tee-${MODPY_DISTV}
PKGNAME=	py-subprocess-tee-${MODPY_DISTV}

HOMEPAGE=	https://github.com/pycontribs/subprocess-tee

CATEGORIES=	sysutils

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes
# this needs unported "molecule", and ansible, maybe also pytest-plus
MODPY_PYTEST_ARGS= -k 'not test_molecule'

TEST_DEPENDS=	devel/py-enrich \
		devel/py-test-cov \
		devel/py-test-xdist

.include <bsd.port.mk>
