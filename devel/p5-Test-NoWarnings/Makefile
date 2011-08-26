# $OpenBSD: Makefile,v 1.10 2011/08/26 09:18:03 jasper Exp $

COMMENT=        forbids warnings while testing

MODULES=	cpan
DISTNAME=	Test-NoWarnings-1.03
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
