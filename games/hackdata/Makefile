# $OpenBSD: Makefile,v 1.3 2001/03/23 16:11:10 espie Exp $

COMMENT=	'common data for the nethack/slash ports'
DISTNAME=	nethack-3.3.1
PKGNAME=	hackdata
CATEGORIES=	games
NEED_VERSION=	1.363
MASTER_SITES=	ftp://ftp.nethack.org/pub/nethack/nh331/src/ \
		ftp://ftp.uu.net/pub/games/nethack/sources/ \
		${MASTER_SITE_GNU}
DISTFILES=	nethack-331.tgz
MASTER_SITE_SUBDIR= nethack

MAINTAINER=	Marc Espie <espie@openbsd.org>

#		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_ONLY=

post-extract:
	@cd ${WRKDIR} && tar zxqf ${FULLDISTDIR}/${DISTFILES} \
	nethack-3.3.1/win/X11/ibm.bdf \
	nethack-3.3.1/win/X11/nh10.bdf \
	nethack-3.3.1/doc/Guidebook.txt

do-build:
	cd ${WRKSRC}/win/X11 && \
	/usr/X11R6/bin/bdftopcf ibm.bdf | /usr/bin/gzip > ibm.pcf.gz && \
	/usr/X11R6/bin/bdftopcf nh10.bdf | /usr/bin/gzip > nh10.pcf.gz

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nethack
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/fonts/hack
	${INSTALL_DATA} ${WRKSRC}/doc/Guidebook.txt ${PREFIX}/share/doc/nethack
	${INSTALL_DATA} ${WRKSRC}/win/X11/ibm.pcf.gz ${PREFIX}/lib/X11/fonts/hack
	${INSTALL_DATA} ${WRKSRC}/win/X11/nh10.pcf.gz ${PREFIX}/lib/X11/fonts/hack

.include <bsd.port.mk>
