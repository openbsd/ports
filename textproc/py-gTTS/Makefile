COMMENT =		Google Translate text-to-speech API library and CLI tool
MODPY_DISTV =	2.5.4
DISTNAME =		gtts-${MODPY_DISTV}
PKGNAME =		py-gTTS-${MODPY_DISTV}
CATEGORIES =		textproc audio
REVISION =		0

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://github.com/pndurette/gTTS

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		www/py-requests>=2.27,<3 \
			devel/py-click>=7.1,<8.2

# XXX wants unported "testfixtures"
TEST_DEPENDS =		devel/py-test \
			devel/py-test-cov

.include <bsd.port.mk>
