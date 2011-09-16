# $OpenBSD: Makefile,v 1.7 2011/09/16 08:26:11 espie Exp $

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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python

MODPY_ADJ_FILES =	mutagen/__init__.py \
			tools/mid3iconv \
			tools/mid3v2 \
			tools/moggsplit \
			tools/mutagen-inspect \
			tools/mutagen-pony

REGRESS_DEPENDS =	audio/faad \
			audio/flac \
			audio/py-eyed3 \
			audio/py-vorbis \
			audio/vorbis-tools \
			multimedia/oggz
REGRESS_TARGET =	test

pre-build:
	@rm ${WRKDIST}/tools/*.orig

do-regress:
	${_MODPY_CMD} ${REGRESS_TARGET}

.include <bsd.port.mk>
