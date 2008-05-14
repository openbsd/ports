# $OpenBSD: Makefile,v 1.7 2008/05/14 10:31:53 simon Exp $

COMMENT= 	catalyst session IDs with cookies

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-State-Cookie-0.09
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Catalyst-Plugin-Session->=0.19:www/p5-Catalyst-Plugin-Session
BUILD_DEPENDS=	${RUN_DEPENDS} \
		::devel/p5-Test-MockObject
REGRESS_DEPENDS=::devel/p5-Test-WWW-Mechanize-Catalyst

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
