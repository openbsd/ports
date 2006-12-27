# $OpenBSD: Makefile,v 1.3 2006/12/27 12:56:07 simon Exp $

COMMENT= 	"serving static pages with catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Static-Simple-0.15
CATEGORIES=	www

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::mail/p5-MIME-Types
REGRESS_DEPENDS=::www/p5-Catalyst-Plugin-SubRequest

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
