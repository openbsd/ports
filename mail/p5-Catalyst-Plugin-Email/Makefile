# $OpenBSD: Makefile,v 1.16 2017/12/08 00:09:18 espie Exp $

COMMENT= 	send emails with Catalyst

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Catalyst-Plugin-Email-0.09
CATEGORIES=	mail
FIX_EXTRACT_PERMISSIONS=Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	mail/p5-Email-MIME>=1.910 \
		mail/p5-Email-Send \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
