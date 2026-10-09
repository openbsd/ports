COMMENT=	redistribution of pkg_resources removed from setuptools 82+

MODPY_DISTV=	1.0.0
DISTNAME=	standard_pkg_resources-${MODPY_DISTV}
PKGNAME=	py-standard-pkg-resources-${MODPY_DISTV}

CATEGORIES=	sysutils

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	sysutils/py-packaging \
		textproc/py-jaraco-text \
		sysutils/py-platformdirs

PORTHOME=	${WRKDIR}
# from pyproject.toml, which also asks for pytest-perf, pytest-home,
# pytest-subprocess - but tests run without.
TEST_DEPENDS=	devel/py-jaraco-envs \
		devel/py-test-xdist \
		devel/py-jaraco-path \
		devel/py-virtualenv \
		devel/py-test-timeout
# not listed there
TEST_DEPENDS+=	devel/py-coverage \
		devel/py-setuptools

post-install:
	rm -r ${WRKINST}${MODPY_SITEPKG}/pkg_resources/tests

.include <bsd.port.mk>
