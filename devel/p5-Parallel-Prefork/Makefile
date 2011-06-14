# $OpenBSD: Makefile,v 1.2 2011/06/14 12:52:17 jasper Exp $

COMMENT=	simple prefork server framework

DISTNAME=	Parallel-Prefork-0.11
REVISION=	0
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan

BUILD_DEPENDS=	devel/p5-Class-Accessor-Lite \
		devel/p5-List-MoreUtils \
		devel/p5-Scope-Guard \
		sysutils/p5-Proc-Wait3
RUN_DEPENDS=	${BUILD_DEPENDS}
REGRESS_DEPENDS=devel/p5-Test-Requires

.include <bsd.port.mk>
