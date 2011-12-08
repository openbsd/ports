# $OpenBSD: Makefile,v 1.17 2011/12/08 20:15:40 eric Exp $

COMMENT=	SSH and SFTP protocol implementation

CATEGORIES=	net

VERSION=	11.1.0
DISTNAME=	TwistedConch-${VERSION}
PKGNAME=	py-twisted-conch-${VERSION}

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedConch

MASTER_SITES=	http://twistedmatrix.com/Releases/Conch/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/conch
RUN_DEPENDS=	security/py-crypto

TRIAL_TARGET=	twisted.conch

.include <bsd.port.mk>
