# New ports collection makefile for:	slash
# Version required:	nethack 3.2.2, slash e8
# Date created:	 24 Jul 98
# Whom:			espie
#
# $OpenBSD: Makefile,v 1.2 1998/09/25 02:09:16 marc Exp $

BROKEN=		"slash source no longer available"
DISTNAME=	slash-e8
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.uu.net/pub/games/nethack/sources/ \
		${MASTER_SITE_GNU}

DISTFILES= nethack-3.2.2${EXTRACT_SUFX}

MASTER_SITES+=http://www.rz.tu.ilmenau.de/~wi019/Slash/

DISTFILES+= Slash-Unix${EXTRACT_SUFX}

MAINTAINER=    espie@OpenBSD.ORG

USE_GMAKE=	yes
USE_X11= yes

MAN6=		dgn_comp.6 dlb.6 lev_comp.6 nethack.6 recover.6

NHDIR=${PREFIX}/lib/slashdir
MAKE_ENV+= NHDIR=${NHDIR}

post-extract:
	@cd ${WRKDIR}; mv nethack-3.2.2 ${DISTNAME}
	@cd ${WRKDIR}; mv dat/* ${DISTNAME}/dat
	cp ${FILESDIR}/blkmar.des ${WRKSRC}/dat

pre-patch:
	@cd ${WRKSRC}; patch -p1 -s < ${WRKDIR}/slashe8.dif
	@cd ${WRKSRC}; patch -p1 -s < ${WRKDIR}/e8p1.dif

pre-configure:
	@cd ${WRKSRC}/sys/unix; ${SH} setup.sh

post-install:
	@cd ${WRKSRC}/doc; chmod 644 *.6
	@cd ${WRKSRC}/doc; PREFIX='${PREFIX}' INSTALL_MAN='${INSTALL_MAN}' ${MAKE} manpages
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/nethack
	${INSTALL_DATA} ${WRKSRC}/doc/Guidebook.txt ${PREFIX}/share/doc/nethack
.endif
	${MKDIR} ${PREFIX}/lib/X11/fonts/hack
	cd ${WRKSRC}/win/X11 && \
	sed -e "s/^NetHack/Slash/; s/^!NetHack/!Slash/" <NetHack.ad >Slash && \
   ${INSTALL_DATA} Slash ${PREFIX}/lib/X11/app-defaults && \
	${X11BASE}/bin/bdftopcf ibm.bdf|gzip >ibm.pcf.gz && \
	${X11BASE}/bin/bdftopcf nh10.bdf|gzip >nh10.pcf.gz && \
	${INSTALL_DATA} ibm.pcf.gz ${PREFIX}/lib/X11/fonts/hack && \
	${INSTALL_DATA} nh10.pcf.gz ${PREFIX}/lib/X11/fonts/hack
	${X11BASE}/bin/mkfontdir ${X11BASE}/lib/X11/fonts/hack
	@${CAT} ${PKGDIR}/DESCR

.include <bsd.port.mk>
