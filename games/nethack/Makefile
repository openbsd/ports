# New ports collection makefile for:	nethack
# Version required:	3.2.2
# Date created:		27 March 1995
# Whom:			asami
#
# $OpenBSD: Makefile,v 1.1 1998/07/29 01:22:23 espie Exp $
# $FreeBSD: Makefile,v 1.13 1997/12/25 22:29:17 asami Exp $
#

DISTNAME=	nethack-3.2.2
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.uu.net/pub/games/nethack/sources/ \
		${MASTER_SITE_GNU}

#MAINTAINER=	ports@FreeBSD.ORG
MAINTAINER=    espie@OpenBSD.ORG

# part of openbsd
#LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

USE_GMAKE=	yes
USE_X11= yes

MAN6=		dgn_comp.6 dlb.6 lev_comp.6 nethack.6 recover.6

NHDIR=${PREFIX}/lib/nethackdir
MAKE_ENV+= NHDIR=${NHDIR}

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
	cp NetHack.ad NetHack && \
   ${INSTALL_DATA} NetHack ${PREFIX}/lib/X11/app-defaults && \
	${X11BASE}/bin/bdftopcf ibm.bdf|gzip >ibm.pcf.gz && \
	${X11BASE}/bin/bdftopcf nh10.bdf|gzip >nh10.pcf.gz && \
	${INSTALL_DATA} ibm.pcf.gz ${PREFIX}/lib/X11/fonts/hack && \
	${INSTALL_DATA} nh10.pcf.gz ${PREFIX}/lib/X11/fonts/hack
	${X11BASE}/bin/mkfontdir ${X11BASE}/lib/X11/fonts/hack
	@${CAT} ${PKGDIR}/DESCR

.include <bsd.port.mk>
