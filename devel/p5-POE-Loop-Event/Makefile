# $OpenBSD: Makefile,v 1.10 2017/12/05 16:25:45 espie Exp $

COMMENT=		bridge that allows POE to be driven by Event.pm

DISTNAME=		POE-Loop-Event-1.302
REVISION=		0
CATEGORIES=		devel
FIX_EXTRACT_PERMISSIONS=Yes

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ARGS+=	--default

BUILD_DEPENDS=		devel/p5-POE-Test-Loops
RUN_DEPENDS+=		devel/p5-Event \
			devel/p5-POE>1.006

.include <bsd.port.mk>
