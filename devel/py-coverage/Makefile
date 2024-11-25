COMMENT=	code coverage measurement for Python

MODPY_EGG_VERSION=	7.6.8
DISTNAME=	coverage-${MODPY_EGG_VERSION}
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

FLAVORS=	python3
FLAVOR=		python3

TEST_DEPENDS=	devel/py-flaky${MODPY_FLAVOR} \
		devel/py-hypothesis${MODPY_FLAVOR} \
		devel/py-test-xdist${MODPY_FLAVOR} \
		textproc/py-pygments${MODPY_FLAVOR}

# tests want a writable directory on the python path that already
# contains a .pth file. creating this allows the dir to be considered
# (otherwise we'd need to make /usr/local/lib/python3.*/site-packages
# writable by _pbuild); some failures but at least the tests run.
pre-test:
	touch ${WRKSRC}/build/lib.openbsd-${OSREV}-${ARCH}-cpython-${MODPY_MAJORMINOR}/foo.pth

.include <bsd.port.mk>
