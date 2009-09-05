# $OpenBSD: Makefile,v 1.2 2009/09/05 16:47:30 jasper Exp $

COMMENT=		bridge that allows POE to be driven by Event.pm

DISTNAME=		POE-Loop-Event-1.302
CATEGORIES=		devel

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ARGS+=	--default

BUILD_DEPENDS=		::devel/p5-POE-Test-Loops
RUN_DEPENDS+=		::devel/p5-Event \
			:p5-POE->1.006:devel/p5-POE

.include <bsd.port.mk>
