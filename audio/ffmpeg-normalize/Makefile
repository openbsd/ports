COMMENT =		audio normalization

MODPY_DISTV =	1.27.7
DISTNAME =		ffmpeg-normalize-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		audio multimedia

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	test/test.py

RUN_DEPENDS =		devel/py-colorama \
			devel/py-colorlog \
			multimedia/py-ffmpeg-progress-yield>=0.7.4 \
			devel/py-tqdm \
			graphics/ffmpeg

.include <bsd.port.mk>
