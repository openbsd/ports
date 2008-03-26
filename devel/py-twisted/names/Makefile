# $OpenBSD: Makefile,v 1.5 2008/03/26 19:57:23 eric Exp $

COMMENT=	DNS protocol implementation

CATEGORIES+=	net

VERSION=	0.4.0
DISTNAME=	TwistedNames-${VERSION}
PKGNAME=	py-twisted-names-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedNames

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Names/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-names-*:devel/py-twisted/names

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.names

.include <bsd.port.mk>
