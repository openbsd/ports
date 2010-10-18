# $OpenBSD: Makefile,v 1.4 2010/10/18 17:47:56 espie Exp $

COMMENT=	module to create objects that are handles to classes

MODULES=	cpan
DISTNAME=	Class-Handle-1.07
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Inspector
REGRESS_DEPENDS=::devel/p5-Test-Pod

MAKE_ENV+=	AUTOMATED_TESTING=1

.include <bsd.port.mk>
