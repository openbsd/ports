# $OpenBSD: Makefile,v 1.13 2000/10/22 15:43:45 espie Exp $

#BROKEN="Port obviously not finished, documentation terse, half-baked packaging"
DISTNAME=	bricons
PKGNAME=	bricons-3.0
CATEGORIES=	x11
NEED_VERSION=	1.305
MASTER_SITES=	ftp://ftp.uni-paderborn.de/unix/X11/ftp.x.org/R5contrib/ \
		ftp://ftp.pasteur.fr/pub/computing/unix/X11/R5contrib/
EXTRACT_SUFX=	-athena-3.0.tar.gz

MAINTAINER=     ports@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake

post-install:
	${INSTALL_DATA} ${WRKDIST}/Xbricons $(PREFIX)/lib/X11/app-defaults
	${INSTALL_DATA_DIR} $(PREFIX)/include/X11/pixmaps
	${INSTALL_DATA_DIR} $(PREFIX)/include/X11/bitmaps
	${INSTALL_DATA} ${WRKDIST}/bitmaps/* $(PREFIX)/include/X11/bitmaps
	${INSTALL_DATA} ${WRKDIST}/*.xpm $(PREFIX)/include/X11/pixmaps/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/bricons
	${INSTALL_DATA} ${FILESDIR}/DOTbriconsrc ${PREFIX}/lib/bricons/briconsrc.sample

.include <bsd.port.mk>
