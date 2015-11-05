# $OpenBSD: Makefile,v 1.13 2015/11/05 19:08:58 jca Exp $

COMMENT= 	send emails with Catalyst

MODULES=	cpan

DISTNAME=	Catalyst-Plugin-Email-0.08
REVISION=	3
CATEGORIES=	mail

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Email-MIME>=1.910 \
		mail/p5-Email-Send \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
