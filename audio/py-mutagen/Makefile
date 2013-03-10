# $OpenBSD: Makefile,v 1.9 2013/03/10 22:55:05 espie Exp $

COMMENT =	Python module to handle audio metadata

MODPY_EGG_VERSION = 1.20
DISTNAME =	mutagen-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =		1
CATEGORIES =	audio

HOMEPAGE =	http://mutagen.googlecode.com/

MASTER_SITES =	${HOMEPAGE}files/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_ADJ_FILES =	mutagen/__init__.py \
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
TEST_TARGET =		test

pre-build:
	@rm ${WRKDIST}/tools/*.orig

do-test:
	${_MODPY_CMD} ${TEST_TARGET}

.include <bsd.port.mk>
