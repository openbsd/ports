COMMENT=	simulation of a true AI

MODPY_DISTV=	1.1
MUSIC_V=	007

GH_ACCOUNT=	singularity
GH_PROJECT=	singularity
GH_TAGNAME=	v${MODPY_DISTV}

CATEGORIES=	games

DISTFILES.m=	endgame-singularity-music-${MUSIC_V}.zip

HOMEPAGE=	http://emhsoft.com/singularity/

# GPLv2+
# music under CC Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE=	Yes

SITES.m=	http://emhsoft.com/singularity/

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/pygame \
		math/py-numpy \
		textproc/py-polib

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_SITEPKG}/singularity/music
	cp -R ${WRKDIR}/endgame-singularity-music-${MUSIC_V}/* \
		${WRKINST}/${MODPY_SITEPKG}/singularity/music

.include <bsd.port.mk>
