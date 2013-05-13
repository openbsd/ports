# $OpenBSD: Makefile,v 1.10 2013/05/13 19:10:45 fgsch Exp $

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

pre-build:
	@rm ${WRKDIST}/tools/*.orig

do-test:
	${MODPY_CMD} test

.include <bsd.port.mk>
