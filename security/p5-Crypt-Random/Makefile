# $OpenBSD: Makefile,v 1.5 2010/03/22 13:54:21 sturm Exp $

COMMENT=	cryptographically secure random number generator

MODULES=	cpan
DISTNAME=	Crypt-Random-1.25
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	security

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
