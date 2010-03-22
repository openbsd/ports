# $OpenBSD: Makefile,v 1.5 2010/03/22 13:54:21 sturm Exp $

COMMENT=	Diffie-Hellman key exchange system

DISTNAME=	Crypt-DH-0.06
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	security perl5

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Crypt/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::security/p5-Crypt-Random

CONFIGURE_STYLE=perl

PKG_ARCH=	*

# use a fast computer, tests will finish eventually
#NO_REGRESS=	tests take ages to complete

pre-build:
	@perl -pi -e "s/urandom/arandom/g" ${WRKSRC}/lib/Crypt/DH.pm

.include <bsd.port.mk>
