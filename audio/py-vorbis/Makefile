# $OpenBSD: Makefile,v 1.2 2011/06/08 17:31:33 jasper Exp $

SHARED_ONLY =	Yes

COMMENT =	Python wrapper for the Vorbis libraries

MODPY_EGG_VERSION=1.4
DISTNAME =	pyvorbis-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}
REVISION =		0
CATEGORIES =	audio
HOMEPAGE =	http://ekyo.nerim.net/software/pyogg/

# LGPL 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}

WANTLIB =	ogg vorbis vorbisenc vorbisfile

MODULES =	lang/python

BUILD_DEPENDS =	audio/py-ogg

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis

RUN_DEPENDS =	${BUILD_DEPENDS} \
		audio/py-ao

NO_REGRESS =	Yes

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
