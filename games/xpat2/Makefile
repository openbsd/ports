# OpenBSD makefile for: xpat2
# Version required:	1.04
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 01:38:33 angelos Exp $
#

DISTNAME=	xpat2-1.04
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/solitaires
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	angelos@openbsd.org

USE_X11=	yes
MAN6=		xpat2.6

post-install:
	touch $(PREFIX)/lib/X11/xpat/xpat.log
	chown root.games $(PREFIX)/lib/X11/xpat/xpat.log $(PREFIX)/bin/xpat2
	chmod 2555 $(PREFIX)/bin/xpat2
	chmod 664 $(PREFIX)/lib/X11/xpat/xpat.log

.include <bsd.port.mk>

