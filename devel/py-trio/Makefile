COMMENT=	library for async concurrency and I/O

MODPY_DISTV=	0.28.0
DISTNAME=	trio-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT or Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

HOMEPAGE=	https://github.com/python-trio/trio

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-attrs \
		devel/py-sortedcontainers \
		net/py-idna \
		devel/py-outcome \
		devel/py-sniffio

# XXX lots fail: needs ruff, pyright, maybe py-test-trio
TEST_DEPENDS=	devel/py-astor \
		devel/py-isort \
		devel/py-jedi \
		devel/py-mypy \
		devel/pylint \
		security/py-trustme \
		textproc/py-black

.include <bsd.port.mk>
