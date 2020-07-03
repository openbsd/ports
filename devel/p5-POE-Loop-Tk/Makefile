# $OpenBSD: Makefile,v 1.16 2020/07/03 21:45:04 sthen Exp $

COMMENT=		bridge that allows POE to be driven by Tk

DISTNAME=		POE-Loop-Tk-1.305
CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS=Yes
REVISION=		0

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_ARGS+=	--default

BUILD_DEPENDS=		devel/p5-POE-Test-Loops>=1.352
RUN_DEPENDS+=		x11/p5-Tk \
			devel/p5-POE>=1.367
TEST_DEPENDS=		devel/p5-Term-Size \
			net/p5-Socket-GetAddrInfo

TEST_IS_INTERACTIVE= x11

.include <bsd.port.mk>
