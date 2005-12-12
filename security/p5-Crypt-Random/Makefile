# $OpenBSD: Makefile,v 1.2 2005/12/12 19:43:57 sturm Exp $

COMMENT=	"cryptographically secure random number generator"

DISTNAME=	Crypt-Random-1.25
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
RUN_DEPENDS=	::devel/p5-Class-Loader \
		::math/p5-Math-Pari

CONFIGURE_STYLE=perl

PKG_ARCH=	*

post-configure:
	@perl -pi -e "s,/dev/urandom,/dev/arandom,g;" \
		-e "s,/dev/random,/dev/srandom,g;" \
		${WRKSRC}/lib/Crypt/Random.pm \
		${WRKSRC}/lib/Crypt/Random/Provider/devrandom.pm \
		${WRKSRC}/lib/Crypt/Random/Provider/devurandom.pm

.include <bsd.port.mk>
