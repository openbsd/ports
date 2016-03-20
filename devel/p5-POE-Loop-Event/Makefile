# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:31 naddy Exp $

COMMENT=		bridge that allows POE to be driven by Event.pm

DISTNAME=		POE-Loop-Event-1.302
REVISION=		0
CATEGORIES=		devel

MODULES=		cpan
PKG_ARCH=		*

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ARGS+=	--default

BUILD_DEPENDS=		devel/p5-POE-Test-Loops
RUN_DEPENDS+=		devel/p5-Event \
			devel/p5-POE>1.006

.include <bsd.port.mk>
