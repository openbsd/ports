# $OpenBSD: Makefile,v 1.3 2007/09/16 02:53:12 merdely Exp $

COMMENT=	NNTP protocol implementation

CATEGORIES+=	news

DISTNAME=	TwistedNews-0.2.0
PKGNAME=	py-twisted-news-0.2.0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNews

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/News/0.2/

REGRESS_DEPENDS=:py-twisted-news-*:devel/py-twisted/news
RUN_DEPENDS=	:py-twisted-mail-*:devel/py-twisted/mail

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.news

.include <bsd.port.mk>
