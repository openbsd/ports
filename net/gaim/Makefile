# Makefile for:		gaim
# Version required:	0.9.10
# Date created:		26 Mar 1999
# Whom:                 Jim Mock <jim@FreeBSD.org>
#
# $OpenBSD: Makefile,v 1.9 2000/10/22 16:16:27 espie Exp $

DISTNAME=	gaim-0.9.10

CATEGORIES=	net
NEED_VERSION=	1.305

MASTER_SITES=	ftp://ftp.marko.net/pub/gaim/
HOMEPAGE=	http://www.marko.net/gaim/

MAINTAINER=	Evan Cordes <evan.cordes@UMICH.EDU>

LIB_DEPENDS=	gtk.1.2::x11/gtk+

USE_X11=	Yes

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+= --disable-esd

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/gaim ${PREFIX}/bin
	@echo "===>  Installing pixmaps"
	${INSTALL_DATA_DIR} ${PREFIX}/share/gaim/pixmaps
	${INSTALL_DATA} ${WRKSRC}/pixmaps/*.xpm ${PREFIX}/share/gaim/pixmaps

.include <bsd.port.mk>
