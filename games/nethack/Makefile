# $OpenBSD: Makefile,v 1.4 1999/12/20 00:37:57 espie Exp $
# $FreeBSD: Makefile,v 1.13 1997/12/25 22:29:17 asami Exp $

DISTNAME=	nethack-3.2.3
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.nethack.org/pub/nethack/oldver/3.2.2/src/ \
		ftp://ftp.uu.net/pub/games/nethack/sources/ \
		${MASTER_SITE_GNU}

DISTFILES=	nethack-3.2.2.tar.gz
WRKSRC=${WRKDIR}/nethack-3.2.2

PATCH_SITES=	ftp://ftp.nethack.org/pub/nethack/oldver/3.2.3/src/
PATCHFILES=nh-3.2.2-3.2.3.diff


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
	@mkdir -p ${PREFIX}/lib/X11/fonts/hack
	@mkdir -p ${PREFIX}/share/doc/nethack
	@cd ${WRKSRC}/doc; chmod 644 *.6
	@cd ${WRKSRC}/doc; PREFIX='${PREFIX}' INSTALL_MAN='${INSTALL_MAN}' make manpages
	${INSTALL_DATA} ${WRKSRC}/doc/Guidebook.txt ${PREFIX}/share/doc/nethack
	@cd ${WRKSRC}/win/X11 && \
	cp NetHack.ad NetHack && \
	${INSTALL_DATA} NetHack ${PREFIX}/lib/X11/app-defaults && \
	${X11BASE}/bin/bdftopcf ibm.bdf | /usr/bin/gzip > ibm.pcf.gz && \
	${X11BASE}/bin/bdftopcf nh10.bdf | /usr/bin/gzip > nh10.pcf.gz && \
	${INSTALL_DATA} ibm.pcf.gz ${PREFIX}/lib/X11/fonts/hack && \
	${INSTALL_DATA} nh10.pcf.gz ${PREFIX}/lib/X11/fonts/hack
	${X11BASE}/bin/mkfontdir ${X11BASE}/lib/X11/fonts/hack
	@cat ${PKGDIR}/DESCR

.include <bsd.port.mk>
