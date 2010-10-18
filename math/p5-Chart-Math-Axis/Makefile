# $OpenBSD: Makefile,v 1.3 2010/10/18 20:52:06 espie Exp $

COMMENT=        algorithm to find good values for chart axis

MODULES=	cpan
DISTNAME=	Chart-Math-Axis-1.05
CATEGORIES=     math graphics
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::devel/p5-Params-Util
REGRESS_DEPENDS=::devel/p5-Test-Taint

MAKE_ENV +=	TEST_POD=Yes AUTOMATED_TESTING=Yes

.include <bsd.port.mk>
