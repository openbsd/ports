# $OpenBSD: Makefile,v 1.14 2011/06/08 17:39:26 jasper Exp $

COMMENT=	SSH and SFTP protocol implementation

CATEGORIES=	net

VERSION=	10.0.0
DISTNAME=	TwistedConch-${VERSION}
PKGNAME=	py-twisted-conch-${VERSION}
REVISION =	1

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedConch

MASTER_SITES=	http://tmrc.mit.edu/mirror/twisted/Conch/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/conch
RUN_DEPENDS=	security/py-crypto

TRIAL_TARGET=	twisted.conch

.include <bsd.port.mk>
