# $OpenBSD: Makefile,v 1.15 2019/07/12 20:47:31 sthen Exp $

COMMENT= 	find and format date headers

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Email-Date-1.104
CATEGORIES=	mail

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Time-TimeDate \
		mail/p5-Email-Abstract \
		mail/p5-Email-Date-Format
TEST_DEPENDS =	sysutils/p5-Capture-Tiny

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
