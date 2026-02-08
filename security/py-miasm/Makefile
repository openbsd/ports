COMMENT=	reverse engineering framework in Python

MODPY_DISTV=	0.1.5
DISTNAME=	miasm-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

# XXX overlay pypi sdist (which misses examples, and many files needed
# for tests) with github archive (which misses VERSION wanted during
# build)
DIST_TUPLE=	github cea-sec miasm v${MODPY_DISTV} .

CATEGORIES=	security devel

HOMEPAGE=	https://github.com/cea-sec/miasm

EPOCH=		0

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

# llvmlite (recommended for JIT) and cparser (at least for objc) are
# optional, could be dropped (or moved to TDEPs) if needed.
RUN_DEPENDS=	devel/py-future \
		devel/py-cparser \
		devel/py-llvmlite \
		devel/py-parsing

TEST_DEPENDS=	devel/py-parameterized \
		math/py-graphviz

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-miasm
	cp -r ${WRKSRC}/example/* ${PREFIX}/share/examples/py-miasm/

do-test:
	cd ${WRKSRC}/test && ${SETENV} ${TEST_ENV} ${MODPY_BIN} \
		./test_all.py -t long,qemu # -m

.include <bsd.port.mk>
