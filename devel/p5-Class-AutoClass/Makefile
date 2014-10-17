#	$OpenBSD: Makefile,v 1.15 2014/10/17 21:57:47 jasper Exp $

COMMENT=	get and set methods and simplify object initialization

DISTNAME=	Class-AutoClass-1.54
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Hash-AutoHash-Args \
			devel/p5-IO-stringy
TEST_DEPENDS=		devel/p5-Test-Deep

.include <bsd.port.mk>
