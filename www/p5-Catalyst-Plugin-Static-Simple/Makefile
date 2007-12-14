# $OpenBSD: Makefile,v 1.7 2007/12/14 22:15:27 simon Exp $

COMMENT= 	serving static pages with catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Static-Simple-0.20
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::mail/p5-MIME-Types
REGRESS_DEPENDS=::www/p5-Catalyst-Plugin-SubRequest
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
