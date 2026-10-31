COMMENT =	python binding for SFCGAL

MODPY_DISTV =	2.3.0
DISTNAME =	pysfcgal-${MODPY_DISTV}
PKGNAME =	py-sfcgal-${MODPY_DISTV}

CATEGORIES =	geo

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes
MODPY_TEST_LINK_SO =	Yes

LIB_DEPENDS =	geo/sfcgal>=${MODPY_DISTV}
WANTLIB +=	SFCGAL

RUN_DEPENDS =	devel/py-cffi
BUILD_DEPENDS =	devel/py-cffi

CFLAGS +=	-I${LOCALBASE}/include

# XX some tests need unshipped tests/expected_data
pre-test:
	# drop tests importing icontract (not ported)
	grep -rl icontract ${WRKSRC}/tests | xargs rm -f

.include <bsd.port.mk>
