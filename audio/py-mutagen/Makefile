# $OpenBSD: Makefile,v 1.11 2013/08/07 21:31:17 naddy Exp $

COMMENT =	Python module to handle audio metadata

MODPY_EGG_VERSION = 1.20
DISTNAME =	mutagen-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2
CATEGORIES =	audio

HOMEPAGE =	https://mutagen.googlecode.com/

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
