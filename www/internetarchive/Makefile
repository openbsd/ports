COMMENT =	python and cli interface to archive.org

MODPY_DISTV =	4.0.1

DISTNAME =	internetarchive-${MODPY_DISTV}
REVISION =	0

DIST_TUPLE +=	github jjjake internetarchive v4.0.1 .

CATEGORIES =	www

HOMEPAGE =	https://archive.org/developers/internetarchive/

# AGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =	setuptools

RUN_DEPENDS =		devel/py-docopt \
			devel/py-schema \
			devel/py-tqdm \
			textproc/py-charset-normalizer \
			textproc/py-jsonpatch \
			www/py-urllib3
TEST_DEPENDS =		${RUN_DEPENDS} \
			www/internetarchive \
			www/py-responses

.include <bsd.port.mk>
