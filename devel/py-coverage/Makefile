COMMENT=	code coverage measurement for Python

MODPY_DISTV=	7.6.9
DISTNAME=	coverage-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# https://github.com/nedbat/coveragepy
HOMEPAGE=	https://coverage.readthedocs.io/en/stable/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	devel/py-flaky \
		devel/py-hypothesis \
		devel/py-test-xdist \
		textproc/py-pygments

# tests want a writable directory on the python path that already
# contains a .pth file. creating this allows the dir to be considered
# (otherwise we'd need to make /usr/local/lib/python3.*/site-packages
# writable by _pbuild); some failures but at least the tests run.
pre-test:
	touch ${WRKSRC}/build/lib.openbsd-${OSREV}-${ARCH}-cpython-${MODPY_MAJORMINOR}/foo.pth

.include <bsd.port.mk>
