# $OpenBSD: Makefile,v 1.12 2019/07/12 20:44:47 sthen Exp $

COMMENT=		concise expressive creations of Class::Meta classes

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Class-Meta-Express-0.13
CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Class-Meta>=0.63

CONFIGURE_STYLE= 	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
