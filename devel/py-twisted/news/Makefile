# $OpenBSD: Makefile,v 1.6 2008/04/15 11:04:27 eric Exp $

COMMENT=	NNTP protocol implementation

CATEGORIES+=	news

VERSION=	8.0.0
DISTNAME=	TwistedNews-${VERSION}
PKGNAME=	py-twisted-news-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNews

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/News/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-news-*:devel/py-twisted/news
RUN_DEPENDS=	:py-twisted-mail-*:devel/py-twisted/mail

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.news

.include <bsd.port.mk>
