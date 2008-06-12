# $OpenBSD: Makefile,v 1.8 2008/06/12 06:46:40 eric Exp $

COMMENT=	SSH and SFTP protocol implementation

CATEGORIES=	net

VERSION=	8.1.0
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
