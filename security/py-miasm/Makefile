BROKEN-i386 =	uint128_t

COMMENT =	reverse engineering framework in Python

DISTNAME =	miasm-0.1.3pl20221105
PKGNAME =	py-${DISTNAME}
EPOCH =		0

GH_ACCOUNT =	cea-sec
GH_PROJECT =	miasm
GH_COMMIT =	d82c9ef57fa48eb254e2547f8a128bbc75b7e966

CATEGORIES =	security devel

HOMEPAGE =	https://github.com/cea-sec/miasm

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	devel/py-llvmlite${MODPY_FLAVOR} \
		devel/py-parsing${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-cparser${MODPY_FLAVOR} \
		devel/py-parameterized${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${MODPY_PY_PREFIX}miasm
	cp -r ${WRKSRC}/example ${PREFIX}/share/${MODPY_PY_PREFIX}miasm/

do-test:
	cd ${WRKSRC}/test && PYTHONPATH=${WRKSRC} ${MODPY_BIN} ./test_all.py -m

.include <bsd.port.mk>
