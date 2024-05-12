COMMENT =	python and cli interface to archive.org

MODPY_EGG_VERSION =	4.0.1

DISTNAME =	internetarchive-${MODPY_EGG_VERSION}

DIST_TUPLE +=	github jjjake internetarchive v4.0.1 .

CATEGORIES =	www

HOMEPAGE =	https://archive.org/developers/internetarchive/

# AGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =	setuptools

RUN_DEPENDS =		devel/py-docopt${MODPY_FLAVOR} \
			devel/py-schema${MODPY_FLAVOR} \
			devel/py-tqdm${MODPY_FLAVOR} \
			textproc/py-charset-normalizer${MODPY_FLAVOR} \
			textproc/py-jsonpatch${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			www/internetarchive \
			www/py-responses${MODPY_FLAVOR}

.include <bsd.port.mk>
