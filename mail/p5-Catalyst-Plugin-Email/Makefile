# $OpenBSD: Makefile,v 1.18 2020/07/03 21:45:24 sthen Exp $

COMMENT= 	send emails with Catalyst

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Catalyst-Plugin-Email-0.09
CATEGORIES=	mail
FIX_EXTRACT_PERMISSIONS=Yes
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	mail/p5-Email-MIME>=1.910 \
		mail/p5-Email-Send \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
