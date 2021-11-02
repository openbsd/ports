# $OpenBSD: Makefile,v 1.37 2021/11/02 00:00:14 sthen Exp $

COMMENT =	Python module to handle audio metadata

MODPY_EGG_VERSION = 1.45.1
DISTNAME =	mutagen-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
PORTROACH =	skipv:release-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	audio

HOMEPAGE =	https://mutagen.readthedocs.org/

MASTER_SITES =	https://github.com/quodlibet/mutagen/releases/download/release-${MODPY_EGG_VERSION}/

# GPLv2+
PERMIT_PACKAGE =	Yes

FLAVORS =	python3
FLAVOR =	python3

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_ADJ_FILES = docs/id3_frames_gen.py
MODPY_PYTEST =	Yes
SUBST_VARS =	MODPY_FLAVOR

TEST_DEPENDS =	audio/faad \
		audio/flac \
		audio/py-eyed3 \
		audio/vorbis-tools \
		devel/py-hypothesis${MODPY_FLAVOR} \
		multimedia/oggz

.include <bsd.port.mk>
