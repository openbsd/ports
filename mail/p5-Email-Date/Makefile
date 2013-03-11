# $OpenBSD: Makefile,v 1.11 2013/03/11 11:23:52 espie Exp $

COMMENT= 	find and format date headers

MODULES=	cpan
USE_GROFF =	Yes

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
