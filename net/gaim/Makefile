# Makefile for:		gaim
# Version required:	0.9.10
# Date created:		26 Mar 1999
# Whom:                 Jim Mock <jim@FreeBSD.org>
#
# $OpenBSD: Makefile,v 1.6 2000/04/21 14:50:28 kevlo Exp $

DISTNAME=	gaim-0.9.10

CATEGORIES=	net
NEED_VERSION=	 1.230

MASTER_SITES=	ftp://ftp.marko.net/pub/gaim/

MAINTAINER=	evan.cordes@UMICH.EDU

LIB_DEPENDS=	gtk.1.2::x11/gtk+

USE_X11=	Yes

FAKE=		Yes
GNU_CONFIGURE=	Yes

CONFIGURE_ARGS+= --disable-esd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/gaim ${PREFIX}/bin
	@echo "===>  Installing pixmaps"
	${INSTALL_DATA_DIR} ${PREFIX}/share/gaim/pixmaps
	${INSTALL_DATA} ${WRKSRC}/pixmaps/*.xpm ${PREFIX}/share/gaim/pixmaps

.include <bsd.port.mk>
