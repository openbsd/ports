# $OpenBSD: Makefile,v 1.3 1999/09/22 22:31:40 brad Exp $

DISTNAME=	xpat2-1.04
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	games/solitaires
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	angelos@openbsd.org

USE_X11=	yes

post-install:
	@${TOUCH} $(PREFIX)/lib/X11/xpat/xpat.log
	@${CHOWN} root.games $(PREFIX)/lib/X11/xpat/xpat.log $(PREFIX)/bin/xpat2
	@${CHMOD} 2555 $(PREFIX)/bin/xpat2
	@${CHMOD} 664 $(PREFIX)/lib/X11/xpat/xpat.log

.include <bsd.port.mk>

