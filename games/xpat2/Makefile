# $OpenBSD: Makefile,v 1.2 1998/11/09 01:50:00 marc Exp $
#

DISTNAME=	xpat2-1.04
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/solitaires
EXTRACT_SUFX=	-src.tar.gz

USE_X11=	yes

post-install:
	touch $(PREFIX)/lib/X11/xpat/xpat.log
	chown root.games $(PREFIX)/lib/X11/xpat/xpat.log $(PREFIX)/bin/xpat2
	chmod 2555 $(PREFIX)/bin/xpat2
	chmod 664 $(PREFIX)/lib/X11/xpat/xpat.log

.include <bsd.port.mk>

