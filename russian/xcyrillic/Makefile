# New ports collection makefile for: xrus
# Version required:     1.0
# Date created:         21 Jul 1998
# Whom:                 Oleg Safiullin <form@vs.itam.nsc.ru>
#
# $OpenBSD: Makefile,v 1.2 1998/09/29 02:54:32 form Exp $
#

DISTNAME=	xcyrillic-1.0
CATEGORIES=	russian x11
MASTER_SITES=	ftp://vs.itam.nsc.ru/pub/Unix/cyrillic/x11/
ALL_TARGET=	X11R6
INSTALL_TARGET=	X11R6_install
USE_X11=	yes

MAINTAINER=	form@vs.itam.nsc.ru

post-install:
	@${ECHO} "***"
	@${ECHO} "*** Don't forget to add /usr/X11R6/lib/X11/fonts/cyrillic/*"
	@${ECHO} "*** to your FontPath in /etc/XF86Config as first component."
	@${ECHO} "***"

.include <bsd.port.mk>
