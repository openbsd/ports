# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:28 ajacoutot Exp $

COMMENT=        provide static calls that apply to a default instantiation

MODULES=	cpan
DISTNAME=	Class-Default-1.51
REVISION=	0
CATEGORIES=     devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_DEPENDS=devel/p5-Test-Pod

MAKE_ENV+=		AUTOMATED_TESTING=1

.include <bsd.port.mk>
