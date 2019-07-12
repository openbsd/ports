# $OpenBSD: Makefile,v 1.9 2019/07/12 20:43:40 sthen Exp $

COMMENT =	Python wrapper for the Vorbis libraries

MODPY_EGG_VERSION=1.4
DISTNAME =	pyvorbis-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}
REVISION =	4
CATEGORIES =	audio
HOMEPAGE =	http://ekyo.nerim.net/software/pyogg/

# LGPL 
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += ogg pthread vorbis vorbisenc vorbisfile

MASTER_SITES =	${HOMEPAGE}

MODULES =	lang/python

BUILD_DEPENDS =	audio/py-ogg

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis

RUN_DEPENDS =	audio/py-ao \
		audio/py-ogg

NO_TEST =	Yes

MODPY_ADJ_FILES =	test/comment.py \
			test/enc.py \
			test/enc2.py \
			test/ogg123.py \
			test/short.py

EXAMPLESDIR =	${PREFIX}/share/examples/py-vorbis

do-configure:
	@cd ${WRKSRC} && ${MODPY_BIN} ./config_unix.py --prefix ${PREFIX} 

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/test/*.py ${EXAMPLESDIR}

.include <bsd.port.mk>
