# $OpenBSD: Makefile,v 1.3 2007/02/03 19:10:39 simon Exp $

COMMENT= 	"send emails with Catalyst"

MODULES=	cpan

DISTNAME=	Catalyst-Plugin-Email-0.08
CATEGORIES=	mail

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-Email-MIME \
		::mail/p5-Email-MIME-Creator \
		::mail/p5-Email-Send \
		::www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
