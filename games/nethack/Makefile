# $OpenBSD: Makefile,v 1.8 2000/02/15 05:04:23 turan Exp $
# $FreeBSD: Makefile,v 1.13 1997/12/25 22:29:17 asami Exp $

DISTNAME=	nethack-3.2.3
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.nethack.org/pub/nethack/oldver/3.2.2/src/ \
		ftp://ftp.uu.net/pub/games/nethack/sources/ \
		${MASTER_SITE_GNU}
NEED_VERSION=	1.191

DISTFILES=	nethack-3.2.2.tar.gz
WRKDIST=${WRKDIR}/nethack-3.2.2

MASTER_SITES0=	ftp://ftp.nethack.org/pub/nethack/oldver/3.2.3/src/
PATCHFILES=nh-3.2.2-3.2.3.diff:0


MASTER_SITE_SUBDIR= nethack

MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_GMAKE=	Yes
USE_X11=	Yes

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
