# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:13 espie Exp $

COMMENT=		pragma to use the C3 method resolution order algorithm

MODULES=		cpan
DISTNAME=		Class-C3-0.21
REVISION=		0
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Algorithm-C3>=0.06 \
			devel/p5-Test-Exception
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-MRO-Compat \
			devel/p5-Sub-Name

CONFIGURE_STYLE=	modinst

.include <bsd.port.mk>
