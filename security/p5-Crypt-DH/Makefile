# $OpenBSD: Makefile,v 1.10 2011/04/19 17:16:22 jasper Exp $

COMMENT=	Diffie-Hellman key exchange system

DISTNAME=	Crypt-DH-0.06
REVISION=	1
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-Random

MODULES=	cpan

# use a fast computer, tests will finish eventually
#NO_REGRESS=	tests take ages to complete

pre-build:
	@perl -pi -e "s/urandom/arandom/g" ${WRKSRC}/lib/Crypt/DH.pm

.include <bsd.port.mk>
