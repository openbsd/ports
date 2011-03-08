# $OpenBSD: Makefile,v 1.7 2011/03/08 15:45:49 sthen Exp $

COMMENT=        lets you build groups of accessors

MODULES=	cpan
DISTNAME=	Class-Accessor-Grouped-0.10002
CATEGORIES=     devel
USE_GROFF=	Yes

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	devel/p5-MRO-Compat \
		devel/p5-Class-Inspector \
		devel/p5-Class-XSAccessor>=1.11 \
		devel/p5-Sub-Identify \
		devel/p5-Sub-Name>=0.05 \
		devel/p5-Test-Exception>=0.31

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
