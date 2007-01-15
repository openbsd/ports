# $OpenBSD: Makefile,v 1.3 2007/01/15 17:40:10 simon Exp $

COMMENT=	"cryptographically secure random number generator"

MODULES=	cpan
DISTNAME=	Crypt-Random-1.25
CATEGORIES=	security

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Class-Loader \
		::math/p5-Math-Pari

post-configure:
	@perl -pi -e "s,/dev/urandom,/dev/arandom,g;" \
		-e "s,/dev/random,/dev/srandom,g;" \
		${WRKSRC}/lib/Crypt/Random.pm \
		${WRKSRC}/lib/Crypt/Random/Provider/devrandom.pm \
		${WRKSRC}/lib/Crypt/Random/Provider/devurandom.pm

.include <bsd.port.mk>
