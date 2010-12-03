# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:27 ajacoutot Exp $

COMMENT=	calculate windows/subsets/pages of arrays

MODULES=	cpan
DISTNAME=	Array-Window-1.02
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	ADAMK

MAKE_ENV+=	AUTOMATED_TESTING=1

REGRESS_DEPENDS+=devel/p5-Test-Pod

.include <bsd.port.mk>
