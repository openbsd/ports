# $OpenBSD: Makefile,v 1.13 2011/06/08 17:39:26 jasper Exp $

COMMENT=	NNTP protocol implementation

CATEGORIES+=	news

VERSION=	10.0.0
DISTNAME=	TwistedNews-${VERSION}
PKGNAME=	py-twisted-news-${VERSION}
REVISION =	1

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNews

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/News/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/news
RUN_DEPENDS=	devel/py-twisted/mail

TRIAL_TARGET=	twisted.news

.include <bsd.port.mk>
