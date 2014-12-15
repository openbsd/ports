#	$OpenBSD: Makefile,v 1.17 2014/12/15 15:53:07 benoit Exp $

COMMENT=	get and set methods and simplify object initialization

DISTNAME =	Class-AutoClass-1.56
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Hash-AutoHash-Args \
			devel/p5-IO-stringy
TEST_DEPENDS=		devel/p5-Test-Deep \
			devel/p5-Test-Pod-Content

.include <bsd.port.mk>
