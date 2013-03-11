# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:20 espie Exp $

COMMENT=		bridge that allows POE to be driven by Tk

DISTNAME=		POE-Loop-Tk-1.302
REVISION=		1
CATEGORIES=		devel

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ARGS+=	--default
USE_GROFF =		Yes

BUILD_DEPENDS=		devel/p5-POE-Test-Loops
RUN_DEPENDS+=		x11/p5-Tk \
			devel/p5-POE>=1.006


TEST_IS_INTERACTIVE= x11

.include <bsd.port.mk>
