# $OpenBSD: Makefile,v 1.14 2015/11/05 19:08:58 jca Exp $

COMMENT= 	simply sending email

MODULES=	cpan

DISTNAME=	Email-Send-2.194
REVISION=	1
CATEGORIES=	mail

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Return-Value \
		mail/p5-Email-Address \
		mail/p5-Email-Simple

TEST_DEPENDS=mail/p5-Email-Abstract \
		mail/p5-Mail-Tools

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
