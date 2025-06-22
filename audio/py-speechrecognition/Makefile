COMMENT =	Python library for performing speech recognition

MODPY_DISTV =	3.14.3
GH_ACCOUNT =	Uberi
GH_PROJECT =	speech_recognition
GH_TAGNAME =	${MODPY_DISTV}
PKGNAME =	py-speechrecognition-${MODPY_DISTV}

CATEGORIES =	audio

HOMEPAGE =	https://github.com/Uberi/speech_recognition

MAINTAINER =	Kevin Lo <kevlo@openbsd.org>

# BSD license
PERMIT_PACKAGE=	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools
MODPY_PYTEST_ARGS=	--ignore tests/recognizers/test_google_cloud.py

# XXX: Python 3.13 will require RDEPs on standard-aifc
# and audioop-lts due to use of aifc and audioop
RUN_DEPENDS =	audio/flac \
		audio/py-audio>=0.2.11 \
		devel/py-typing-extensions

# XXX: needs a few more TDEPs
TEST_DEPENDS =	www/py-httpx \
		www/py-respx

.include <bsd.port.mk>
