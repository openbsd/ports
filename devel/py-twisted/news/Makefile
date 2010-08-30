# $OpenBSD: Makefile,v 1.11 2010/08/30 22:24:16 jasper Exp $

COMMENT=	NNTP protocol implementation

CATEGORIES+=	news

VERSION=	10.0.0
DISTNAME=	TwistedNews-${VERSION}
PKGNAME=	py-twisted-news-${VERSION}
REVISION =	0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNews

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/News/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-news-*:devel/py-twisted/news
RUN_DEPENDS=	:py-twisted-mail-*:devel/py-twisted/mail

TRIAL_TARGET=	twisted.news

.include <bsd.port.mk>
