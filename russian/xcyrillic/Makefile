# $OpenBSD: Makefile,v 1.8 1999/06/20 04:50:03 marc Exp $

DISTNAME=	xcyrillic-1.1
CATEGORIES=	russian x11

MASTER_SITES=	ftp://vell.nsc.ru/pub/X11/cyrillic/
ALL_TARGET=	X11R6
INSTALL_TARGET=	X11R6_install
USE_X11=	yes

MAINTAINER=	ports@openbsd.org

post-install:
	@${ECHO} "***"
	@${ECHO} "*** Don't forget to add directories under"
	@${ECHO} "*** /usr/X11R6/lib/X11/fonts/cyrillic to FontPath"
	@${ECHO} "*** in /etc/XF86Config file as first components."
	@${ECHO} "***"

.include <bsd.port.mk>
