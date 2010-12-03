# $OpenBSD: Makefile,v 1.9 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT=        forbids warnings while testing

MODULES=	cpan
DISTNAME=	Test-NoWarnings-0.084
REVISION=	0
CATEGORIES=     devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Test-Tester

REGRESS_DEPENDS=devel/p5-Devel-StackTrace

.include <bsd.port.mk>
