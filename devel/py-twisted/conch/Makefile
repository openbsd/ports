# $OpenBSD: Makefile,v 1.12 2010/08/30 22:24:16 jasper Exp $

COMMENT=	SSH and SFTP protocol implementation

CATEGORIES=	net

VERSION=	10.0.0
DISTNAME=	TwistedConch-${VERSION}
PKGNAME=	py-twisted-conch-${VERSION}
REVISION =	0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedConch

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Conch/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-conch-*:devel/py-twisted/conch
RUN_DEPENDS=	:py-crypto-*:security/py-crypto

TRIAL_TARGET=	twisted.conch

.include <bsd.port.mk>
