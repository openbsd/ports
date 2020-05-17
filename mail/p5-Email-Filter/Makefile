# $OpenBSD: Makefile,v 1.9 2020/05/17 21:30:21 cwen Exp $

COMMENT = 	library for creating easy email filters

DISTNAME =	Email-Filter-1.034
REVISION =	0
CATEGORIES =	mail

HOMEPAGE =	http://emailproject.perl.org/

MAINTAINER =	Armin Wolfermann <armin@wolfermann.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*
CPAN_AUTHOR =	RJBS

RUN_DEPENDS =	devel/p5-Class-Trigger>=0.08 \
		devel/p5-Module-Pluggable \
		mail/p5-Email-LocalDelivery>=0.07 \
		mail/p5-Email-Simple>=1.91 \
		devel/p5-IPC-Run>=0.77

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
