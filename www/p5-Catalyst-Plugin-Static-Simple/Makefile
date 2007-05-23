# $OpenBSD: Makefile,v 1.5 2007/05/23 20:56:18 simon Exp $

COMMENT= 	"serving static pages with catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Static-Simple-0.17
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
