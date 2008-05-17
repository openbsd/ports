# $OpenBSD: Makefile,v 1.8 2008/05/17 14:00:58 simon Exp $

COMMENT=	HTTP Body Parser

DISTNAME=	HTTP-Body-1.03
PKGNAME=	p5-${DISTNAME}p0
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
