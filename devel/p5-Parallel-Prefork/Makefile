# $OpenBSD: Makefile,v 1.3 2011/10/05 17:30:57 jasper Exp $

COMMENT=	simple prefork server framework

DISTNAME=	Parallel-Prefork-0.11
REVISION=	1
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan

RUN_DEPENDS=	devel/p5-Class-Accessor-Lite \
		devel/p5-List-MoreUtils \
		devel/p5-Scope-Guard \
		sysutils/p5-Proc-Wait3
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=devel/p5-Test-Requires

.include <bsd.port.mk>
