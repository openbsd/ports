COMMENT =		audio normalization

MODPY_DISTV =		1.36.1
GH_ACCOUNT =		slhck
GH_PROJECT =		ffmpeg-normalize
GH_TAGNAME =		v${MODPY_DISTV}
PKGNAME =		ffmpeg-normalize-${MODPY_DISTV}

CATEGORIES =		audio multimedia

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		uv_build
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

RUN_DEPENDS =		devel/py-colorama \
			devel/py-colorlog \
			multimedia/py-ffmpeg-progress-yield>=1 \
			devel/py-tqdm \
			graphics/ffmpeg

pre-test:
	ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>
