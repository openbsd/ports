# $OpenBSD: Makefile,v 1.12 2013/09/17 14:12:39 dcoppa Exp $

COMMENT =	Python module to handle audio metadata

MODPY_EGG_VERSION = 1.22
DISTNAME =	mutagen-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	audio

HOMEPAGE =	https://mutagen.googlecode.com/

MASTER_SITES =	${HOMEPAGE}files/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_ADJ_FILES =	docs/id3_frames_gen.py \
			tools/mid3iconv \
			tools/mid3v2 \
			tools/moggsplit \
			tools/mutagen-inspect \
			tools/mutagen-pony

TEST_DEPENDS =		audio/faad \
			audio/flac \
			audio/py-eyed3 \
			audio/py-vorbis \
			audio/vorbis-tools \
			multimedia/oggz

MAKE_ENV =		LC_CTYPE="en_US.UTF-8"

do-test:
	${MODPY_TEST_TARGET}

.include <bsd.port.mk>
