# $OpenBSD: Makefile,v 1.11 2010/07/02 04:06:11 jim Exp $

COMMENT=	HTTP Body Parser

DISTNAME=	HTTP-Body-1.07
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::www/p5-libwww

REGRESS_DEPENDS=::devel/p5-Test-Deep

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
