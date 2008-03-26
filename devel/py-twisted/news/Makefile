# $OpenBSD: Makefile,v 1.5 2008/03/26 19:57:23 eric Exp $

COMMENT=	NNTP protocol implementation

CATEGORIES+=	news

VERSION=	0.3.0
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
