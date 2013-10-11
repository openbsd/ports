# $OpenBSD: Makefile,v 1.12 2013/10/11 23:49:57 naddy Exp $

COMMENT= 	find and format date headers

MODULES=	cpan

DISTNAME=	Email-Date-1.103
REVISION=	1
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Time-TimeDate \
		mail/p5-Email-Abstract \
		mail/p5-Email-Date-Format

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
