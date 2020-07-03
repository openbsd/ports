# $OpenBSD: Makefile,v 1.32 2020/07/03 21:12:35 sthen Exp $

COMMENT =	Python module to handle audio metadata

MODPY_EGG_VERSION = 1.43.0
REVISION =	2
DISTNAME =	mutagen-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
PORTROACH =	skipv:release-${MODPY_EGG_VERSION}

CATEGORIES =	audio

HOMEPAGE =	https://mutagen.readthedocs.org/

MASTER_SITES =	https://github.com/quodlibet/mutagen/releases/download/release-${MODPY_EGG_VERSION}/

# GPLv2+
PERMIT_PACKAGE =	Yes

FLAVOR ?=
FLAVORS =	python3

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_ADJ_FILES = docs/id3_frames_gen.py
MODPY_PYTEST =	Yes
SUBST_VARS =	MODPY_FLAVOR MODPY_3ONLY

TEST_DEPENDS =	audio/faad \
		audio/flac \
		audio/vorbis-tools \
		devel/py-hypothesis${MODPY_FLAVOR} \
		multimedia/oggz

.if ${FLAVOR:Mpython3}
MODPY_3ONLY =
TEST_DEPENDS +=	audio/py-eyed3
.else
MODPY_3ONLY = "@comment "
TEST_DEPENDS +=	audio/py-vorbis

post-install:
	rm ${PREFIX}/bin/* ${PREFIX}/man/man1/*
.endif

.include <bsd.port.mk>
