COMMENT =	python and cli interface to archive.org

MODPY_DISTV =	5.5.1
DIST_TUPLE +=	github jjjake internetarchive v${MODPY_DISTV} .

CATEGORIES =	www

HOMEPAGE =	https://archive.org/developers/internetarchive/

# AGPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-docopt \
		devel/py-schema \
		devel/py-tqdm \
		textproc/py-charset-normalizer \
		textproc/py-jsonpatch \
		www/py-urllib3
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
		textproc/py-pygments \
		www/py-responses

.include <bsd.port.mk>
