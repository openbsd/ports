# $OpenBSD: Makefile,v 1.8 2013/03/11 11:41:26 espie Exp $

COMMENT=	Triple-DES EDE encryption/decryption

MODULES=	cpan
DISTNAME=	Crypt-DES_EDE3-0.01
PKGNAME=	p5-${DISTNAME:S/_/-/}
REVISION=	1
CATEGORIES=	security
USE_GROFF =	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-DES

.include <bsd.port.mk>
