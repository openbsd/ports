# $OpenBSD: Makefile,v 1.15 2016/01/29 14:31:02 sthen Exp $

COMMENT= 	simply sending email

MODULES=	cpan

DISTNAME=	Email-Send-2.201
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
