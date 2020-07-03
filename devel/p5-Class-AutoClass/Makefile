#	$OpenBSD: Makefile,v 1.20 2020/07/03 21:44:41 sthen Exp $

COMMENT=	get and set methods and simplify object initialization

DISTNAME =	Class-AutoClass-1.56
CATEGORIES=	devel
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Hash-AutoHash-Args \
			devel/p5-IO-stringy
TEST_DEPENDS=		devel/p5-Test-Deep \
			devel/p5-Test-Pod-Content

.include <bsd.port.mk>
