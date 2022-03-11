COMMENT =		audio normalization

MODPY_EGG_VERSION =	1.20.0
DISTNAME =		ffmpeg-normalize-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		audio

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-colorama${MODPY_FLAVOR} \
			devel/py-tqdm${MODPY_FLAVOR} \
			graphics/ffmpeg

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} test/test.py

.include <bsd.port.mk>
