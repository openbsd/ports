# $OpenBSD: Makefile,v 1.8 2002/05/13 18:50:43 espie Exp $

COMMENT=	'common data for the nethack/slash ports'
DISTNAME=	nethack-3.4.0
PKGNAME=	hackdata-3.4.0
CATEGORIES=	games
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.nethack.org/pub/nethack/nh340/src/ \
		ftp://ftp.uu.net/pub/games/nethack/sources/ \
		${MASTER_SITE_GNU:=nethack/}
DISTFILES=	nethack-340.tgz

MAINTAINER=	Marc Espie <espie@openbsd.org>

#		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_ONLY=

post-extract:
	@cd ${WRKDIR} && ${TAR} zxqf ${FULLDISTDIR}/${DISTFILES} \
	nethack-3.4.0/win/X11/ibm.bdf \
	nethack-3.4.0/win/X11/nh10.bdf \
	nethack-3.4.0/doc/Guidebook.txt

do-build:
	cd ${WRKSRC}/win/X11 && \
	${X11BASE}/bin/bdftopcf ibm.bdf | /usr/bin/gzip > ibm.pcf.gz && \
	${X11BASE}/bin/bdftopcf nh10.bdf | /usr/bin/gzip > nh10.pcf.gz

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nethack
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/fonts/hack
	${INSTALL_DATA} ${WRKSRC}/doc/Guidebook.txt ${PREFIX}/share/doc/nethack
	${INSTALL_DATA} ${WRKSRC}/win/X11/ibm.pcf.gz ${PREFIX}/lib/X11/fonts/hack
	${INSTALL_DATA} ${WRKSRC}/win/X11/nh10.pcf.gz ${PREFIX}/lib/X11/fonts/hack

.include <bsd.port.mk>
