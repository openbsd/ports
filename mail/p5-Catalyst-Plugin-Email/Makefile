# $OpenBSD: Makefile,v 1.2 2006/12/27 12:56:07 simon Exp $

COMMENT= 	"send emails with Catalyst"

MODULES=	cpan

DISTNAME=	Catalyst-Plugin-Email-0.07
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
