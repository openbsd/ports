# $OpenBSD: Makefile,v 1.10 2000/04/12 19:12:43 angelos Exp $

DISTNAME=	xpat2-1.04
CATEGORIES=	games
FAKE=No
MASTER_SITES=	${MASTER_SITE_BACKUP}
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_X11=	yes

post-install:
	@touch ${PREFIX}/lib/X11/xpat/xpat.log
	@${CHOWN} root.games ${PREFIX}/lib/X11/xpat/xpat.log ${PREFIX}/bin/xpat2
	@${CHMOD} 2555 ${PREFIX}/bin/xpat2
	@${CHMOD} 664 ${PREFIX}/lib/X11/xpat/xpat.log
	@${CHMOD} 755 ${PREFIX}/lib/X11/xpat/audio ${PREFIX}/lib/X11/xpat/default

.include <bsd.port.mk>

