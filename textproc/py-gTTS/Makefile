COMMENT =		Google Translate text-to-speech API library and CLI tool
MODPY_EGG_VERSION =	2.5.2
DISTNAME =		gtts-${MODPY_EGG_VERSION}
PKGNAME =		py-gTTS-${MODPY_EGG_VERSION}
CATEGORIES =		textproc audio

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://github.com/pndurette/gTTS

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}>=2.27,<3 \
			devel/py-click${MODPY_FLAVOR}>=7.1,<8.2

# XXX wants unported "testfixtures"
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
