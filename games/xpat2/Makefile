# $OpenBSD: Makefile,v 1.12 2000/10/22 14:03:17 espie Exp $

DISTNAME=	xpat2-1.04
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_BACKUP}
EXTRACT_SUFX=	-src.tar.gz

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

WRKSRC=${WRKDIST}/src
USE_IMAKE=	Yes

post-install:
	@touch ${PREFIX}/lib/X11/xpat/xpat.log
	@${CHOWN} root.games ${PREFIX}/lib/X11/xpat/xpat.log ${PREFIX}/bin/xpat2
	@${CHMOD} 2555 ${PREFIX}/bin/xpat2
	@${CHMOD} 664 ${PREFIX}/lib/X11/xpat/xpat.log
	@${CHMOD} 755 ${PREFIX}/lib/X11/xpat/audio ${PREFIX}/lib/X11/xpat/default

.include <bsd.port.mk>

