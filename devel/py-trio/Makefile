COMMENT=	library for async concurrency and I/O

MODPY_DISTV=	0.33.0
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

PORTHOME=	${WRKDIR}

# deselect tests which hang
MODPY_PYTEST_ARGS= -v \
		-k 'not test_ki_in_repl and not test_run_with_broken_pipe and not test_pipe_fully'

# some tests want the python module for ruff (not just the binary which is
# all that devel/ruff currently provides)
TEST_DEPENDS=	devel/py-astor \
		devel/py-isort \
		devel/py-jedi \
		devel/py-mypy \
		devel/py-test-trio \
		devel/pylint \
		security/py-trustme \
		textproc/py-black

.include <bsd.port.mk>
