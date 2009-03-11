# $OpenBSD: Makefile,v 1.10 2009/03/11 22:20:09 bernd Exp $

COMMENT=	SSH and SFTP protocol implementation

CATEGORIES=	net

VERSION=	8.2.0
DISTNAME=	TwistedConch-${VERSION}
PKGNAME=	py-twisted-conch-${VERSION}p0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedConch

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Conch/${VERSION:R}/

REGRESS_DEPENDS=:py-twisted-conch-*:devel/py-twisted/conch
RUN_DEPENDS=	:py-crypto-*:security/py-crypto

TRIAL_TARGET=	twisted.conch

.include <bsd.port.mk>
