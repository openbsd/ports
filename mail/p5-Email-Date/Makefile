# $OpenBSD: Makefile,v 1.13 2014/11/13 10:51:44 benoit Exp $

COMMENT= 	find and format date headers

MODULES=	cpan

DISTNAME =	Email-Date-1.104
CATEGORIES=	mail

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Time-TimeDate \
		mail/p5-Email-Abstract \
		mail/p5-Email-Date-Format
TEST_DEPENDS =	sysutils/p5-Capture-Tiny

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
