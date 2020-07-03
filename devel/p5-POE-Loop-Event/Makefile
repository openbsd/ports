# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:04 sthen Exp $

COMMENT=		bridge that allows POE to be driven by Event.pm

DISTNAME=		POE-Loop-Event-1.305
CATEGORIES=		devel
REVISION=		0

FIX_EXTRACT_PERMISSIONS=Yes

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_ARGS+=	--default

BUILD_DEPENDS=		devel/p5-POE-Test-Loops>=1.352
RUN_DEPENDS+=		devel/p5-Event \
			devel/p5-POE>=1.367
TEST_DEPENDS=		devel/p5-Term-Size \
			net/p5-Socket-GetAddrInfo

.include <bsd.port.mk>
