# $OpenBSD: Makefile,v 1.13 2015/01/21 14:19:13 sthen Exp $

COMMENT= 	simply sending email

MODULES=	cpan

DISTNAME=	Email-Send-2.194
REVISION=	0
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Return-Value \
		mail/p5-Email-Address \
		mail/p5-Email-Simple

TEST_DEPENDS=mail/p5-Email-Abstract \
		mail/p5-Mail-Tools

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
