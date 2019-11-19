# $OpenBSD: Makefile,v 1.28 2019/11/19 12:12:00 sthen Exp $

COMMENT-main =	Python module to handle audio metadata
COMMENT-tools =	command-line tools to handle audio metadata

MODPY_EGG_VERSION = 1.43.0
DISTNAME =	mutagen-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
FULLPKGNAME-main =	${MODPY_PY_PREFIX}${DISTNAME}
FULLPKGPATH-main =	audio/py-mutagen,-main${MODPY_FLAVOR}
FULLPKGNAME-tools =	${DISTNAME}
FULLPKGPATH-tools =	audio/py-mutagen,-tools
PORTROACH =	skipv:release-${MODPY_EGG_VERSION}

CATEGORIES =	audio

HOMEPAGE =	https://mutagen.readthedocs.org/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MASTER_SITES =	https://github.com/quodlibet/mutagen/releases/download/release-${MODPY_EGG_VERSION}/

# GPLv2+
PERMIT_PACKAGE =	Yes

FLAVOR ?=
FLAVORS =	python3
MULTI_PACKAGES = -main
.if ${FLAVOR:Mpython3}
MULTI_PACKAGES += -tools
.endif

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_ADJ_FILES = docs/id3_frames_gen.py
MODPY_PYTEST =	Yes
SUBST_VARS =	MODPY_FLAVOR

RUN_DEPENDS-tools = ${FULLPKGPATH-main}

TEST_DEPENDS =	audio/faad \
		audio/flac \
		audio/vorbis-tools \
		devel/py-hypothesis${MODPY_FLAVOR} \
		multimedia/oggz

.if ${FLAVOR} != python3
TEST_DEPENDS +=	audio/py-eyed3 \
		audio/py-vorbis

post-install:
	rm ${PREFIX}/bin/* ${PREFIX}/man/man1/*
.endif

#MAKE_ENV =	LC_CTYPE="en_US.UTF-8"

.include <bsd.port.mk>
