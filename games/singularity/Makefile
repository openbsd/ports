# $OpenBSD: Makefile,v 1.2 2007/10/08 08:22:41 steven Exp $

COMMENT=	simulation of a true AI

V=		0.26a
DISTNAME=	singularity_${V}
PKGNAME=	singularity-${V}p0
CATEGORIES=	games

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		endgame-singularity-music-001.zip

HOMEPAGE=	http://emhsoft.com/singularity/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPL
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
	${INSTALL_DATA} ${WRKSRC}/data/*.{ttf,png,txt,wav,jpg} \
		${PREFIX}/share/singularity/
	${INSTALL_DATA} ${WRKSRC}/data/*.html ${PREFIX}/share/doc/singularity
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/singularity
	${INSTALL_DATA} ${WRKDIR}/endgame-singularity-music-001/music/*.ogg \
		${PREFIX}/share/singularity/music
	${INSTALL_SCRIPT} ${FILESDIR}/singularity ${PREFIX}/bin/singularity
	@perl -pi -e 's,##MODPY_BIN##,${MODPY_BIN},g' ${PREFIX}/bin/singularity

.include <bsd.port.mk>
