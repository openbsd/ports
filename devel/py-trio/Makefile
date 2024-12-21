COMMENT=	library for async concurrency and I/O

MODPY_DISTV=	0.24.0
REVISION=	2
DISTNAME=	trio-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# MIT or Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

HOMEPAGE=	https://github.com/python-trio/trio

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-attrs>=20.1.0 \
		devel/py-exceptiongroup>=1.0.1 \
		devel/py-outcome \
		devel/py-sortedcontainers \
		devel/py-sniffio>=1.3.0 \
		net/py-idna

# XXX lots fail: needs ruff, pyright, maybe py-test-trio
TEST_DEPENDS=	devel/py-astor \
		devel/py-isort \
		devel/py-jedi \
		devel/py-mypy \
		devel/pylint \
		security/py-trustme \
		textproc/py-black

.include <bsd.port.mk>
