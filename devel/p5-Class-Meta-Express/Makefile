# $OpenBSD: Makefile,v 1.10 2014/12/08 19:42:55 benoit Exp $

COMMENT=		concise expressive creations of Class::Meta classes

MODULES=		cpan
DISTNAME =		Class-Meta-Express-0.13
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Class-Meta>=0.63

CONFIGURE_STYLE= 	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
