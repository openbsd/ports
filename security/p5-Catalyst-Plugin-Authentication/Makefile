# $OpenBSD: Makefile,v 1.10 2010/07/13 20:14:22 sthen Exp $

COMMENT= 	Catalyst authentication framework

DISTNAME=	Catalyst-Plugin-Authentication-0.10007
REVISION=	0
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::devel/p5-Class-Inspector \
		::devel/p5-Class-Data-Inheritable \
		::www/p5-Catalyst-Runtime \
		::www/p5-Catalyst-Plugin-Session
BUILD_DEPENDS=	${RUN_DEPENDS} \
		::devel/p5-Test-Exception
REGRESS_DEPENDS=::devel/p5-Test-WWW-Mechanize-Catalyst \
		::security/p5-Digest-SHA1 \
		::www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
