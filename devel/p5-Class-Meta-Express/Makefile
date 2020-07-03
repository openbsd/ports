# $OpenBSD: Makefile,v 1.13 2020/07/03 21:44:43 sthen Exp $

COMMENT=		concise expressive creations of Class::Meta classes

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		Class-Meta-Express-0.13
CATEGORIES=		devel
REVISION =		0

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Class-Meta>=0.63

CONFIGURE_STYLE= 	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
