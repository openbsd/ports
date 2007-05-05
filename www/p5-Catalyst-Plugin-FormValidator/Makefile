# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:51 simon Exp $

COMMENT= 	"plugin to Data::FormValidator for catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-FormValidator-0.02
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::devel/p5-Data-FormValidator

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
