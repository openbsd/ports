BROKEN-i386 =	uint128_t

COMMENT =	reverse engineering framework in Python

MODPY_DISTV =	0.1.3
GH_ACCOUNT =	cea-sec
GH_PROJECT =	miasm
GH_COMMIT =	d82c9ef57fa48eb254e2547f8a128bbc75b7e966
REVISION =	4
DISTNAME =	miasm-${MODPY_DISTV}pl20221105
# XXX see post-extract below! build process expects sdist files which
# include a VERSION file, otherwise it tries to extract a version from git.
# if updating, try switching to MODPY_PI distfile (there is an 0.1.5)
# and see if post-extract can be dropped.
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security devel

HOMEPAGE =	https://github.com/cea-sec/miasm

EPOCH =		0

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-llvmlite \
		devel/py-parsing

TEST_DEPENDS =	devel/py-cparser \
		devel/py-parameterized

post-extract:
	[ -e ${WRKSRC}/miasm/VERSION ] || echo ${MODPY_DISTV} > ${WRKSRC}/miasm/VERSION

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/${MODPY_PY_PREFIX}miasm
	cp -r ${WRKSRC}/example ${PREFIX}/share/${MODPY_PY_PREFIX}miasm/

do-test:
	cd ${WRKSRC}/test && PYTHONPATH=${WRKSRC} ${MODPY_BIN} ./test_all.py -m

.include <bsd.port.mk>
