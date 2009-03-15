# $OpenBSD: Makefile,v 1.4 2009/03/15 14:39:03 espie Exp $

COMMENT=	simulation of a true AI

V=		0.27
DISTNAME=	singularity_${V}
PKGNAME=	singularity-${V}p0
CATEGORIES=	games

MODPY_EGG_VERSION=	${V}

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		endgame-singularity-music-001.zip

HOMEPAGE=	http://emhsoft.com/singularity/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
# music under CC Attribution-ShareAlike 3.0 Unported
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WRKDIST=	${WRKDIR}/singularity-${V}
NO_REGRESS=	Yes

MODULES=	lang/python
RUN_DEPENDS=	:pygame-*:devel/pygame

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' ${WRKSRC}/code/g.py
	@mv ${WRKSRC}/code ${WRKSRC}/singularity

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/singularity
	${INSTALL_DATA_DIR} ${PREFIX}/share/singularity/music
	cp -r ${WRKSRC}/data/* ${PREFIX}/share/singularity
	mv ${PREFIX}/share/singularity/*.html \
		${PREFIX}/share/doc/singularity
	${INSTALL_DATA} ${WRKDIR}/endgame-singularity-music-001/music/*.ogg \
		${PREFIX}/share/singularity/music
	${INSTALL_SCRIPT} ${FILESDIR}/singularity ${PREFIX}/bin/singularity
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/singularity
	@perl -pi -e 's,##MODPY_BIN##,${MODPY_BIN},g' ${PREFIX}/bin/singularity

.include <bsd.port.mk>
