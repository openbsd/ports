# $OpenBSD: Makefile,v 1.27 2019/06/03 16:06:50 sthen Exp $

COMMENT =	Python module to handle audio metadata

MODPY_EGG_VERSION = 1.42.0
DISTNAME =	mutagen-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
PORTROACH =	skipv:release-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	audio

HOMEPAGE =	https://mutagen.readthedocs.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MASTER_SITES =	https://github.com/quodlibet/mutagen/releases/download/release-${MODPY_EGG_VERSION}/

# GPLv2+
PERMIT_PACKAGE =	Yes

FLAVOR ?=
FLAVORS =	python3

MODULES =	lang/python

TOOLS =		mid3cp mid3iconv mid3v2 moggsplit mutagen-inspect mutagen-pony
MODPY_ADJ_FILES = docs/id3_frames_gen.py ${TOOLS:m%=tools/m%}

TEST_DEPENDS =	audio/faad \
		audio/flac \
		audio/vorbis-tools \
		devel/py-hypothesis${MODPY_FLAVOR} \
		multimedia/oggz

.if ${FLAVOR} != python3
TEST_DEPENDS +=		audio/py-eyed3 \
			audio/py-vorbis
.endif

MAKE_ENV =	LC_CTYPE="en_US.UTF-8"

do-test:
	${MODPY_TEST_TARGET}

post-install:
.for i in ${TOOLS}
	mv ${PREFIX}/bin/$i ${PREFIX}/bin/$i${MODPY_BIN_SUFFIX}
	mv ${PREFIX}/man/man1/$i.1 ${PREFIX}/man/man1/$i${MODPY_BIN_SUFFIX}.1
.endfor

.include <bsd.port.mk>
