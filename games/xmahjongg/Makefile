# OpenBSD makefile for:	xmahjongg
# Date created:		16 Aug 1996
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 03:22:42 angelos Exp $
#

DISTNAME=	xmahjongg
PKGNAME=	xmahjongg-1.0
CATEGORIES=	games
# Most Usenet archive sites don't store it as a .tar.gz, but Slackware
# and it's mirrors do.
MASTER_SITES=	ftp://wcarchive.cdrom.com/pub/linux/slackware/source/xap/xgames/

MAINTAINER=	angelos@openbsd.org

WRKSRC=		${WRKDIR}/xmahjongg
USE_IMAKE=	yes

NO_CDROM=	"Restrictive copyright"

post-extract:
	@${CP} ${WRKSRC}/xmahjongg.6 ${WRKSRC}/xmahjongg.man

.include <bsd.port.mk>
