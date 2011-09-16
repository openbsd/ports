# $OpenBSD: Makefile,v 1.16 2011/09/16 09:24:56 espie Exp $

COMMENT=	SSH and SFTP protocol implementation

CATEGORIES=	net

VERSION=	11.0.0
DISTNAME=	TwistedConch-${VERSION}
PKGNAME=	py-twisted-conch-${VERSION}
REVISION=		0

HOMEPAGE=	http://twistedmatrix.com/trac/wiki/TwistedConch

MASTER_SITES=	http://twistedmatrix.com/Releases/Conch/${VERSION:R}/

REGRESS_DEPENDS=devel/py-twisted/conch
RUN_DEPENDS=	security/py-crypto

TRIAL_TARGET=	twisted.conch

.include <bsd.port.mk>
