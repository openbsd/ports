# New ports collection makefile for: xrus
# Version required:     1.0
# Date created:         21 Jul 1998
# Whom:                 Oleg Safiullin <form@vs.itam.nsc.ru>
#
# $OpenBSD: Makefile,v 1.3 1998/10/15 11:17:02 form Exp $
#

DISTNAME=	xcyrillic-1.1
CATEGORIES=	russian x11
MASTER_SITES=	ftp://vs.itam.nsc.ru/pub/Unix/cyrillic/x11/
ALL_TARGET=	X11R6
INSTALL_TARGET=	X11R6_install
USE_X11=	yes

MAINTAINER=	form@vs.itam.nsc.ru

post-install:
	@${ECHO} "***"
	@${ECHO} "*** Don't forget to add directories under"
	@${ECHO} "*** /usr/X11R6/lib/X11/fonts/cyrillic to FontPath"
	@${ECHO} "*** in /etc/XF86Config file as first components."
	@${ECHO} "***"

.include <bsd.port.mk>
