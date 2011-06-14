# $OpenBSD: Makefile,v 1.1.1.1 2011/06/14 12:13:08 robert Exp $

COMMENT=	asimple prefork server framework

DISTNAME=	Parallel-Prefork-0.11
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan

BUILD_DEPENDS=	devel/p5-Class-Accessor-Lite
RUN_DEPENDS=	${BUILD_EPENDS}

.include <bsd.port.mk>
