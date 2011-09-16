# $OpenBSD: Makefile,v 1.15 2011/09/16 09:24:56 espie Exp $

COMMENT=	NNTP protocol implementation

CATEGORIES+=	news

VERSION=	11.0.0
DISTNAME=	TwistedNews-${VERSION}
PKGNAME=	py-twisted-news-${VERSION}
REVISION=		0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNews

MASTER_SITES=	http://twistedmatrix.com/Releases/News/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/news
RUN_DEPENDS=	devel/py-twisted/mail

TRIAL_TARGET=	twisted.news

.include <bsd.port.mk>
