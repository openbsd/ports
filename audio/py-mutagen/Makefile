COMMENT =	Python module to handle audio metadata

MODPY_DISTV =	1.47.0
DISTNAME =	mutagen-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
PORTROACH =	skipv:release-${MODPY_DISTV}
REVISION =	1

CATEGORIES =	audio

HOMEPAGE =	https://mutagen.readthedocs.org/

SITES =	https://github.com/quodlibet/mutagen/releases/download/release-${MODPY_DISTV}/

# GPLv2+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_ADJ_FILES = docs/id3_frames_gen.py

TEST_DEPENDS =	audio/faad \
		audio/flac \
		audio/py-eyed3 \
		audio/vorbis-tools \
		devel/py-hypothesis \
		multimedia/oggz

.include <bsd.port.mk>
