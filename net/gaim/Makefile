# Makefile for:		gaim
# Version required:	0.9.10
# Date created:		26 Mar 1999
# Whom:                 Jim Mock <jim@FreeBSD.org>
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/12/14 05:22:46 dugsong Exp $

DISTNAME=	gaim-0.9.10

CATEGORIES=	net

MASTER_SITES=	ftp://ftp.marko.net/pub/gaim/

MAINTAINER=	evan.cordes@UMICH.EDU

LIB_DEPENDS=	gtk.1.2:${PORTSDIR}/x11/gtk+

USE_X11=	yes

GNU_CONFIGURE=	yes

CONFIGURE_ARGS+= --disable-esd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/gaim ${PREFIX}/bin
	@${ECHO} "===>  Installing pixmaps"
	${INSTALL_DATA_DIR} ${PREFIX}/share/gaim/pixmaps
	${INSTALL_DATA} ${WRKSRC}/pixmaps/*.xpm ${PREFIX}/share/gaim/pixmaps

.include <bsd.port.mk>
