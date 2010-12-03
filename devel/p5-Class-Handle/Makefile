# $OpenBSD: Makefile,v 1.7 2010/12/03 11:44:28 ajacoutot Exp $

COMMENT=	module to create objects that are handles to classes

MODULES=	cpan
DISTNAME=	Class-Handle-1.07
REVISION=	1
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-Class-ISA
REGRESS_DEPENDS=devel/p5-Test-Pod \
		devel/p5-Class-ISA

MAKE_ENV+=	AUTOMATED_TESTING=1

.include <bsd.port.mk>
