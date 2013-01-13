# $OpenBSD: Makefile,v 1.11 2013/01/13 09:28:09 sthen Exp $

COMMENT=        forbids warnings while testing

MODULES=	cpan
DISTNAME=	Test-NoWarnings-1.04
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Test-Tester>=0.107

REGRESS_DEPENDS=devel/p5-Devel-StackTrace

.include <bsd.port.mk>
