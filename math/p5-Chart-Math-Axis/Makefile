# $OpenBSD: Makefile,v 1.1.1.1 2007/10/13 08:00:55 simon Exp $

COMMENT=        algorithm to find good values for chart axis

MODULES=	cpan
DISTNAME=	Chart-Math-Axis-1.01
CATEGORIES=     math graphics

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

CPAN_AUTHOR=	ADAMK

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-Clone->=0.27:devel/p5-Clone \
		::devel/p5-Params-Util
REGRESS_DEPENDS=::devel/p5-Test-Taint

.include <bsd.port.mk>
