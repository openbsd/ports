# $OpenBSD: Makefile,v 1.2 2005/12/12 21:14:02 sturm Exp $

COMMENT=	"RSA public-key cryptosystem"

DISTNAME=	Crypt-RSA-1.57
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
RUN_DEPENDS=	::converters/p5-Convert-ASCII-Armour \
		::devel/p5-Data-Buffer \
		::security/p5-Crypt-CBC \
		::security/p5-Crypt-Primes \
		::security/p5-Digest-MD2 \
		::security/p5-Digest-SHA1 \
		::security/p5-Tie-EncryptedHash \
		::textproc/p5-Sort-Versions

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
