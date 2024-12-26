COMMENT=	virtualenv-based automation of test activities

MODPY_DISTV=	4.23.2
DISTNAME=	tox-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	https://tox.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

RUN_DEPENDS=	devel/py-cachetools \
		textproc/py-chardet \
		devel/py-colorama \
		sysutils/py-filelock \
		sysutils/py-packaging \
		sysutils/py-platformdirs \
		devel/py-pluggy \
		devel/py-pyproject-api \
		devel/py-virtualenv

# additional deps needed, at least devpi-process seems fairly necessary.
# also asks for covdefaults, detect-test-pollution, diff-cover, re-assert,
# time-machine but some/all of those are likely optional.
NO_TEST=	Yes
#TEST_DEPENDS=	devel/py-build \
#		sysutils/py-distlib \
#		devel/py-flaky \
#		devel/py-hatch-vcs \
#		devel/py-hatchling \
#		sysutils/py-psutil \
#		devel/py-test-cov \
#		devel/py-test-mock \
#		devel/py-test-xdist \
#		devel/py-setuptools \
#		devel/py-wheel \

# some tests need HOME to be writable
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
