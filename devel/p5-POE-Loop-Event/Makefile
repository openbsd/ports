# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:20 espie Exp $

COMMENT=		bridge that allows POE to be driven by Event.pm

DISTNAME=		POE-Loop-Event-1.302
REVISION=		0
CATEGORIES=		devel

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_ARGS+=	--default
USE_GROFF =		Yes

BUILD_DEPENDS=		devel/p5-POE-Test-Loops
RUN_DEPENDS+=		devel/p5-Event \
			devel/p5-POE>1.006

.include <bsd.port.mk>
