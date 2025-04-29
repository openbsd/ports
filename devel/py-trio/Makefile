COMMENT=	library for async concurrency and I/O

MODPY_DISTV=	0.30.0
DISTNAME=	trio-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT or Apache 2.0
PERMIT_PACKAGE=	Yes

HOMEPAGE=	https://github.com/python-trio/trio

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-attrs \
		devel/py-sortedcontainers \
		net/py-idna \
		devel/py-outcome \
		devel/py-sniffio

# hangs
MODPY_PYTEST_ARGS= --ignore src/trio/_tests/test_subprocess.py \
		   --ignore src/trio/_tests/test_unix_pipes.py

# some tests want ruff (not ported)
TEST_DEPENDS=	devel/py-astor \
		devel/py-isort \
		devel/py-jedi \
		devel/py-mypy \
		devel/py-test-trio \
		devel/pylint \
		security/py-trustme \
		textproc/py-black

.include <bsd.port.mk>
