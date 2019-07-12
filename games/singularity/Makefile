# $OpenBSD: Makefile,v 1.19 2019/07/12 20:46:24 sthen Exp $

COMMENT=	simulation of a true AI

MODPY_EGG_VERSION= 0.30
MUSIC_V=	007
V=		${MODPY_EGG_VERSION}c
DISTNAME=	singularity-${V}-src
PKGNAME=	singularity-${V}
REVISION=	0

CATEGORIES=	games

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		endgame-singularity-music-${MUSIC_V}.zip

HOMEPAGE=	http://emhsoft.com/singularity/

# GPLv2
# music under CC Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://emhsoft.com/singularity/

WRKDIST=	${WRKDIR}/singularity-${V}
NO_TEST=	Yes

MODULES=	lang/python
RUN_DEPENDS=	devel/pygame \
		math/py-numpy

NO_BUILD=	Yes

do-install:
	find ${WRKSRC} -name \*.py -exec \
		perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' {} \;
	${INSTALL_DATA_DIR} ${PREFIX}/share/singularity/music
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/singularity
	cp -R ${WRKSRC}/code/ ${PREFIX}/share/singularity/
	cp -R ${WRKSRC}/data/ ${PREFIX}/share/singularity/
	rm ${PREFIX}/share/singularity/code/graphics/g.py.orig
	mv ${PREFIX}/share/singularity/data/*.html \
		${PREFIX}/share/doc/singularity/
	cp -R ${WRKDIR}/endgame-singularity-music-${MUSIC_V}/* \
		${PREFIX}/share/singularity/music
	${INSTALL_DATA} ${WRKSRC}/singularity.py ${PREFIX}/share/singularity/
	${SUBST_PROGRAM} \
		${FILESDIR}/singularity ${PREFIX}/bin/singularity
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/singularity

.include <bsd.port.mk>
