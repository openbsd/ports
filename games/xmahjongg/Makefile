# $OpenBSD: Makefile,v 1.2 1998/11/09 01:49:59 marc Exp $
#

DISTNAME=	xmahjongg
PKGNAME=	xmahjongg-1.0
CATEGORIES=	games

NO_CDROM=	"Restrictive copyright"

MAINTAINER=	angelos@openbsd.org

# Most Usenet archive sites don't store it as a .tar.gz, but Slackware
# and it's mirrors do.
MASTER_SITES=	ftp://wcarchive.cdrom.com/pub/linux/slackware/source/xap/xgames/

USE_IMAKE=	yes
WRKSRC=		${WRKDIR}/xmahjongg

post-extract:
	@${CP} ${WRKSRC}/xmahjongg.6 ${WRKSRC}/xmahjongg.man

.include <bsd.port.mk>
