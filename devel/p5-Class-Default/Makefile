# $OpenBSD: Makefile,v 1.2 2008/07/13 17:32:10 dhill Exp $

COMMENT=        provide static calls that apply to a default instantiation

MODULES=	cpan
DISTNAME=	Class-Default-1.51
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_DEPENDS=::devel/p5-Test-Pod

MAKE_ENV+=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
