# $OpenBSD: Makefile,v 1.5 2000/02/12 08:02:20 turan Exp $

DISTNAME=	xpat2-1.04
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_BACKUP}
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

USE_X11=	yes

post-install:
	@${TOUCH} $(PREFIX)/lib/X11/xpat/xpat.log
	@${CHOWN} root.games $(PREFIX)/lib/X11/xpat/xpat.log $(PREFIX)/bin/xpat2
	@${CHMOD} 2555 $(PREFIX)/bin/xpat2
	@${CHMOD} 664 $(PREFIX)/lib/X11/xpat/xpat.log

.include <bsd.port.mk>

