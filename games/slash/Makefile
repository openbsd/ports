# $OpenBSD: Makefile,v 1.6 1999/05/09 21:51:50 brad Exp $

DISTNAME=	slash-e8
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.uu.net/pub/games/nethack/sources/ \
		http://www.rz.tu-ilmenau.de/~wi019/Slash/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= nethack
DISTFILES=	nethack-3.2.2.tar.gz Slash-Unix.tar.gz

MAINTAINER=	espie@OpenBSD.ORG

USE_GMAKE=	yes
USE_X11=	yes

NHDIR=		${PREFIX}/lib/slashdir
MAKE_ENV+= 	NHDIR=${NHDIR}

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

	${MKDIR} ${PREFIX}/share/doc/nethack
	${INSTALL_DATA} ${WRKSRC}/doc/Guidebook.txt ${PREFIX}/share/doc/nethack

	${MKDIR} ${PREFIX}/lib/X11/fonts/hack
	cd ${WRKSRC}/win/X11 && \
	sed-e "s/^NetHack/Slash/; s/^!NetHack/!Slash/" <NetHack.ad >Slash && \
	${INSTALL_DATA} Slash ${PREFIX}/lib/X11/app-defaults && \
	${X11BASE}/bin/bdftopcf ibm.bdf|gzip >ibm.pcf.gz && \
	${X11BASE}/bin/bdftopcf nh10.bdf|gzip >nh10.pcf.gz && \
	${INSTALL_DATA} ibm.pcf.gz ${PREFIX}/lib/X11/fonts/hack && \
	${INSTALL_DATA} nh10.pcf.gz ${PREFIX}/lib/X11/fonts/hack
	${X11BASE}/bin/mkfontdir ${X11BASE}/lib/X11/fonts/hack
	@${CAT} ${PKGDIR}/DESCR

.include <bsd.port.mk>
