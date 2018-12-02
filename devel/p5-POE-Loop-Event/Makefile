# $OpenBSD: Makefile,v 1.11 2018/12/02 01:04:48 afresh1 Exp $

COMMENT=		bridge that allows POE to be driven by Event.pm

DISTNAME=		POE-Loop-Event-1.305
CATEGORIES=		devel

FIX_EXTRACT_PERMISSIONS=Yes

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ARGS+=	--default

BUILD_DEPENDS=		devel/p5-POE-Test-Loops>=1.352
RUN_DEPENDS+=		devel/p5-Event \
			devel/p5-POE>=1.367
TEST_DEPENDS=		devel/p5-Term-Size \
			net/p5-Socket-GetAddrInfo

.include <bsd.port.mk>
