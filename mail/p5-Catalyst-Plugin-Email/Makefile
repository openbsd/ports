# $OpenBSD: Makefile,v 1.12 2013/10/11 23:49:57 naddy Exp $

COMMENT= 	send emails with Catalyst

MODULES=	cpan

DISTNAME=	Catalyst-Plugin-Email-0.08
REVISION=	2
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Email-MIME>=1.910 \
		mail/p5-Email-Send \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
