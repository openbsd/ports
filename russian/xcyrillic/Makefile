# New ports collection makefile for: xrus
# Version required:     1.0
# Date created:         21 Jul 1998
# Whom:                 Oleg Safiullin <form@OpenBSD.ORG>
#
# $OpenBSD: Makefile,v 1.4 1998/10/20 08:39:48 form Exp $
#

DISTNAME=	xcyrillic-1.1
CATEGORIES=	russian x11
MASTER_SITES=	ftp://vs.itam.nsc.ru/pub/Unix/cyrillic/x11/
ALL_TARGET=	X11R6
INSTALL_TARGET=	X11R6_install
USE_X11=	yes

MAINTAINER=	form@OpenBSD.ORG

post-install:
	@${ECHO} "***"
	@${ECHO} "*** Don't forget to add directories under"
	@${ECHO} "*** /usr/X11R6/lib/X11/fonts/cyrillic to FontPath"
	@${ECHO} "*** in /etc/XF86Config file as first components."
	@${ECHO} "***"

.include <bsd.port.mk>
