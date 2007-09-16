# $OpenBSD: Makefile,v 1.3 2007/09/16 02:53:12 merdely Exp $

COMMENT=	HTTP protocol implementation

CATEGORIES+=	www

DISTNAME=	TwistedWeb-0.6.0
PKGNAME=	py-twisted-web-0.6.0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedWeb

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Web/0.6/

RUN_DEPENDS=	:py-SOAPpy-*:devel/py-SOAPpy
REGRESS_DEPENDS=:py-twisted-web-*:devel/py-twisted/web

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.web

.include <bsd.port.mk>
