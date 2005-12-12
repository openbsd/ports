# $OpenBSD: Makefile,v 1.2 2005/12/12 19:30:58 sturm Exp $

COMMENT=	"Diffie-Hellman key exchange system"

DISTNAME=	Crypt-DH-0.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

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

NO_REGRESS=	"tests take ages to complete"

pre-build:
	@perl -pi -e "s/urandom/arandom/g" ${WRKSRC}/lib/Crypt/DH.pm

.include <bsd.port.mk>
