# $OpenBSD: Makefile,v 1.7 2008/06/12 06:46:40 eric Exp $

COMMENT=	DNS protocol implementation

CATEGORIES+=	net

VERSION=	8.1.0
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
