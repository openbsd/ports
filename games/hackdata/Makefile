# $OpenBSD: Makefile,v 1.1.1.1 2000/04/16 20:42:09 espie Exp $

DISTNAME=	nethack-3.3.0
PKGNAME=	hackdata
CATEGORIES=	games
NEED_VERSION=	1.250
MASTER_SITES=	ftp://ftp.nethack.org/pub/nethack/src/ \
		ftp://ftp.uu.net/pub/games/nethack/sources/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= nethack

MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes
EXTRACT_ONLY=

post-extract:
	@cd ${WRKDIR} && tar zxqf ${FULLDISTDIR}/${DISTFILES} \
	nethack-3.3.0/win/X11/ibm.bdf \
	nethack-3.3.0/win/X11/nh10.bdf \
	nethack-3.3.0/doc/Guidebook.txt

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
