# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:14 espie Exp $

COMMENT=        provide static calls that apply to a default instantiation

MODULES=	cpan
DISTNAME=	Class-Default-1.51
REVISION=	0
CATEGORIES=     devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

TEST_DEPENDS=devel/p5-Test-Pod

MAKE_ENV+=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
