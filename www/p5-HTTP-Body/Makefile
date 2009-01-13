# $OpenBSD: Makefile,v 1.10 2009/01/13 14:37:16 simon Exp $

COMMENT=	HTTP Body Parser

DISTNAME=	HTTP-Body-1.05
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::www/p5-libwww

REGRESS_DEPENDS=::devel/p5-YAML

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
