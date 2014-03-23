# $OpenBSD: Makefile,v 1.18 2014/03/23 22:06:37 jasper Exp $

COMMENT=		pragma to use the C3 method resolution order algorithm

MODULES=		cpan
DISTNAME=		Class-C3-0.26
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Algorithm-C3>=0.06 \
			devel/p5-Test-Exception
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=		devel/p5-MRO-Compat \
			devel/p5-Sub-Name

CONFIGURE_STYLE=	modinst

.include <bsd.port.mk>
