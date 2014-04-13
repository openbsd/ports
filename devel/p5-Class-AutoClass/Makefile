#	$OpenBSD: Makefile,v 1.13 2014/04/13 01:01:38 naddy Exp $

COMMENT=	get and set methods and simplify object initialization

DISTNAME=	Class-AutoClass-1.54
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Hash-AutoHash-Args \
			devel/p5-IO-stringy
TEST_DEPENDS=	devel/p5-Test-Deep

.include <bsd.port.mk>
