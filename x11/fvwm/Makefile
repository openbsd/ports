# OpenBSD makefile for:	fvwm
# Version required:	1.24r
# Date created:		12 December 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/01/23 06:41:47 don Exp $
#

DISTNAME=	fvwm-1.24r
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.hpc.uh.edu/pub/fvwm/version-1/ \
		ftp://ftp.ics.es.osaka-u.ac.jp/pub/CFAN/sources/1.x/

MAINTAINER=	don@OpenBSD.ORG

LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

USE_IMAKE=	yes
XMKMF=		xmkmf
ALL_TARGET=	Makefiles all

post-install:
	@mkdir -p ${PREFIX}/include/X11/pixmaps
	${INSTALL} -c -o ${BINOWN} -g ${BINGRP} -m 444 \
	${WRKSRC}/fvwm_icons/*.xpm ${PREFIX}/include/X11/pixmaps

.include <bsd.port.mk>
