# $OpenBSD: Makefile,v 1.3 1999/09/28 17:22:27 brad Exp $

DISTNAME=	xmahjongg
PKGNAME=	xmahjongg-1.0
CATEGORIES=	games
# Most Usenet archive sites don't store it as a .tar.gz, but Slackware
# and it's mirrors do.
MASTER_SITES=	ftp://ftp.digex.net/pub/os/linux/slackware/source/xap/xgames/ \
		ftp://wcarchive.cdrom.com/pub/linux/slackware/source/xap/xgames/

NO_CDROM=	"Restrictive copyright"

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes
WRKSRC=		${WRKDIR}/xmahjongg

post-extract:
	@${CP} ${WRKSRC}/xmahjongg.6 ${WRKSRC}/xmahjongg.man

.include <bsd.port.mk>
