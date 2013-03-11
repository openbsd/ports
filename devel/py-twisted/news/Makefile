# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:27 espie Exp $

COMMENT=	NNTP protocol implementation

CATEGORIES+=	news

VERSION=	11.1.0
DISTNAME=	TwistedNews-${VERSION}
PKGNAME=	py-twisted-news-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNews

MASTER_SITES=	http://twistedmatrix.com/Releases/News/${VERSION:R}/

TEST_DEPENDS=devel/py-twisted/news
RUN_DEPENDS=	devel/py-twisted/mail

TRIAL_TARGET=	twisted.news

.include <bsd.port.mk>
