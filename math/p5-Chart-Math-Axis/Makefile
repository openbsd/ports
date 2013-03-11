# $OpenBSD: Makefile,v 1.6 2013/03/11 11:23:55 espie Exp $

COMMENT=        algorithm to find good values for chart axis

MODULES=	cpan
DISTNAME=	Chart-Math-Axis-1.05
REVISION=	0
CATEGORIES=     math graphics
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

RUN_DEPENDS=	devel/p5-Params-Util
TEST_DEPENDS=devel/p5-Test-Taint

MAKE_ENV +=	TEST_POD=Yes AUTOMATED_TESTING=Yes

.include <bsd.port.mk>
