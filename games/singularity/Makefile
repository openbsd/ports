COMMENT=	simulation of a true AI

MODPY_EGG_VERSION= 1.00
MUSIC_V=	007
V=		${MODPY_EGG_VERSION}
DISTNAME=	singularity-${V}
PKGNAME=	singularity-${V}
REVISION=	3

CATEGORIES=	games

DISTFILES.m = 	endgame-singularity-music-${MUSIC_V}.zip

HOMEPAGE=	http://emhsoft.com/singularity/

# GPLv2+
# music under CC Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE=	Yes

SITES=	https://github.com/singularity/singularity/releases/download/v${V}/
SITES.m=http://emhsoft.com/singularity/

WRKDIST=	${WRKDIR}/singularity-${V}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =	devel/pygame${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR}

pre-configure:
	find ${WRKSRC} -name \*.py -exec \
		perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' {} \;

MUSIC_SRC=endgame-singularity-music-${MUSIC_V}
MUSIC_DEST=lib/python${MODPY_VERSION}/site-packages/singularity/music

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MUSIC_DEST}
	cp -R ${WRKDIR}/${MUSIC_SRC}/* ${PREFIX}/${MUSIC_DEST}

.include <bsd.port.mk>
