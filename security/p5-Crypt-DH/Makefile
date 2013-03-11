# $OpenBSD: Makefile,v 1.12 2013/03/11 11:41:26 espie Exp $

COMMENT=	Diffie-Hellman key exchange system

DISTNAME=	Crypt-DH-0.06
REVISION=	2
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-Random

MODULES=	cpan

# use a fast computer, tests will finish eventually
#NO_TEST=	tests take ages to complete

.include <bsd.port.mk>
