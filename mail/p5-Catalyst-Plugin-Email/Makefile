# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:51 simon Exp $

COMMENT= 	"send emails with Catalyst"

MODULES=	cpan

DISTNAME=	Catalyst-Plugin-Email-0.08
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

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
