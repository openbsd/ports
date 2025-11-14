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
MODPY_PYTEST_ARGS= \
	--ignore tests/recognizers/test_google_cloud.py \
	--ignore tests/recognizers/whisper_api/test_groq.py \
	--ignore tests/recognizers/whisper_api/test_openai.py

BUILD_DEPENDS =	audio/py-standard-aifc
RUN_DEPENDS =	audio/flac \
		audio/py-audio>=0.2.11 \
		audio/py-audioop-lts \
		audio/py-standard-aifc \
		devel/py-typing-extensions

# XXX: needs a few more TDEPs
TEST_DEPENDS =	math/py-numpy \
		www/py-httpx \
		www/py-respx

.include <bsd.port.mk>
