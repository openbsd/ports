# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:14 espie Exp $

COMMENT=		concise expressive creations of Class::Meta classes

MODULES=		cpan
DISTNAME=		Class-Meta-Express-0.11
CATEGORIES=		devel
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Class-Meta>=0.63

CONFIGURE_STYLE= 	modbuild

MAKE_ENV+=		TEST_POD=Yes

.include <bsd.port.mk>
