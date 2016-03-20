# $OpenBSD: Makefile,v 1.16 2016/03/20 19:56:45 naddy Exp $

COMMENT= 	simply sending email

MODULES=	cpan
PKG_ARCH=	*

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
