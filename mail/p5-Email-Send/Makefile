# $OpenBSD: Makefile,v 1.12 2013/03/11 11:23:52 espie Exp $

COMMENT= 	simply sending email

MODULES=	cpan
USE_GROFF =	Yes

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
