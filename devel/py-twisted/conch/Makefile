# $OpenBSD: Makefile,v 1.6 2008/03/26 19:57:23 eric Exp $

COMMENT=	SSH and SFTP protocol implementation

CATEGORIES=	net

VERSION=	0.8.0
DISTNAME=	TwistedConch-${VERSION}
PKGNAME=	py-twisted-conch-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedConch

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Conch/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-conch-*:devel/py-twisted/conch
RUN_DEPENDS=	:py-crypto-*:security/py-crypto

do-regress:
	${LOCALBASE}/bin/trial \
		--temp-directory=${WRKBUILD} \
		twisted.conch

.include <bsd.port.mk>
