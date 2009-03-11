# $OpenBSD: Makefile,v 1.9 2009/03/11 22:20:09 bernd Exp $

COMMENT=	NNTP protocol implementation

CATEGORIES+=	news

VERSION=	8.2.0
DISTNAME=	TwistedNews-${VERSION}
PKGNAME=	py-twisted-news-${VERSION}p0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNews

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/News/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-news-*:devel/py-twisted/news
RUN_DEPENDS=	:py-twisted-mail-*:devel/py-twisted/mail

TRIAL_TARGET=	twisted.news

.include <bsd.port.mk>
