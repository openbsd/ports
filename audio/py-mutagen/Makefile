# $OpenBSD: Makefile,v 1.18 2016/08/30 17:08:05 sthen Exp $

COMMENT =	Python module to handle audio metadata

MODPY_EGG_VERSION = 1.34.1
DISTNAME =	mutagen-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	audio

HOMEPAGE =	https://mutagen.readthedocs.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MASTER_SITES =	https://bitbucket.org/lazka/mutagen/downloads/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

FLAVOR ?=
FLAVORS =		python3

MODULES =		lang/python

MODPY_ADJ_FILES =	docs/id3_frames_gen.py \
			tools/mid3cp \
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

.if ${FLAVOR:Mpython3}
post-install:
.for i in mid3cp mid3iconv mid3v2 moggsplit mutagen-inspect mutagen-pony
	mv ${PREFIX}/bin/$i ${PREFIX}/bin/$i${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/man/man1/$i.1 ${PREFIX}/man/man1/$i${MODPY_BIN_SUFFIX}.1
.endfor
.endif

.include <bsd.port.mk>
