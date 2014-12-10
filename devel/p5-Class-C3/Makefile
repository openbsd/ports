# $OpenBSD: Makefile,v 1.21 2014/12/10 21:50:24 benoit Exp $

COMMENT=		pragma to use the C3 method resolution order algorithm

MODULES =		cpan
DISTNAME =		Class-C3-0.27
CATEGORIES =		devel
REVISION =		0

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Algorithm-C3>=0.06 \
			devel/p5-Test-Exception
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/p5-MRO-Compat \
			devel/p5-Sub-Name

MAKE_ENV +=		TEST_POD=1

CONFIGURE_STYLE=	modinst

.include <bsd.port.mk>
