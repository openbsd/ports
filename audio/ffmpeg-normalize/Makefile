COMMENT =		audio normalization

MODPY_EGG_VERSION =	1.27.6
DISTNAME =		ffmpeg-normalize-${MODPY_EGG_VERSION}

CATEGORIES =		audio multimedia

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	test/test.py

RUN_DEPENDS =		devel/py-colorama${MODPY_FLAVOR} \
			multimedia/py-ffmpeg-progress-yield${MODPY_FLAVOR}>=0.7.4 \
			devel/py-tqdm${MODPY_FLAVOR} \
			graphics/ffmpeg
TEST_DEPENDS =		devel/py-colorlog${MODPY_FLAVOR}

.include <bsd.port.mk>
