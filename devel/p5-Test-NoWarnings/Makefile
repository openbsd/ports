# $OpenBSD: Makefile,v 1.6 2007/12/11 20:46:15 simon Exp $

COMMENT=        forbids warnings while testing

MODULES=	cpan
DISTNAME=	Test-NoWarnings-0.084
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Test-Tester

REGRESS_DEPENDS=::devel/p5-Devel-StackTrace

.include <bsd.port.mk>
