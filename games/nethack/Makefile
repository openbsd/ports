# $OpenBSD: Makefile,v 1.3 1999/09/23 20:54:05 brad Exp $
# $FreeBSD: Makefile,v 1.13 1997/12/25 22:29:17 asami Exp $

DISTNAME=	nethack-3.2.2
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.uu.net/pub/games/nethack/sources/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= nethack

NEED_VERSION=	1.114

MAINTAINER=	espie@openbsd.org

USE_GMAKE=	yes
USE_X11=	yes

NHDIR=	${PREFIX}/lib/nethackdir
MAKE_ENV+= NHDIR=${NHDIR}

pre-configure:
	@cd ${WRKSRC}/sys/unix; ${SH} setup.sh

post-install:
	@${MKDIR} ${PREFIX}/lib/X11/fonts/hack
	@${MKDIR} ${PREFIX}/share/doc/nethack
	@cd ${WRKSRC}/doc; ${CHMOD} 644 *.6
	@cd ${WRKSRC}/doc; PREFIX='${PREFIX}' INSTALL_MAN='${INSTALL_MAN}' ${MAKE} manpages
	${INSTALL_DATA} ${WRKSRC}/doc/Guidebook.txt ${PREFIX}/share/doc/nethack
	@cd ${WRKSRC}/win/X11 && \
	${CP} NetHack.ad NetHack && \
	${INSTALL_DATA} NetHack ${PREFIX}/lib/X11/app-defaults && \
	${X11BASE}/bin/bdftopcf ibm.bdf | /usr/bin/gzip > ibm.pcf.gz && \
	${X11BASE}/bin/bdftopcf nh10.bdf | /usr/bin/gzip > nh10.pcf.gz && \
	${INSTALL_DATA} ibm.pcf.gz ${PREFIX}/lib/X11/fonts/hack && \
	${INSTALL_DATA} nh10.pcf.gz ${PREFIX}/lib/X11/fonts/hack
	${X11BASE}/bin/mkfontdir ${X11BASE}/lib/X11/fonts/hack
	@${CAT} ${PKGDIR}/DESCR

.include <bsd.port.mk>
