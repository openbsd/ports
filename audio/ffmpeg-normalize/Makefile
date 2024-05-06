COMMENT =		audio normalization

MODPY_EGG_VERSION =	1.27.7
DISTNAME =		ffmpeg-normalize-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		audio multimedia

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	test/test.py

RUN_DEPENDS =		devel/py-colorama${MODPY_FLAVOR} \
			devel/py-colorlog${MODPY_FLAVOR} \
			multimedia/py-ffmpeg-progress-yield${MODPY_FLAVOR}>=0.7.4 \
			devel/py-tqdm${MODPY_FLAVOR} \
			graphics/ffmpeg

.include <bsd.port.mk>
