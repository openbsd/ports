# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:31 sthen Exp $

COMMENT = 	library for creating easy email filters

DISTNAME =	Email-Filter-1.034
CATEGORIES =	mail

HOMEPAGE =	http://emailproject.perl.org/

MAINTAINER =	Armin Wolfermann <armin@wolfermann.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*
CPAN_AUTHOR =	RJBS

RUN_DEPENDS =	devel/p5-Class-Trigger>=0.08 \
		mail/p5-Email-LocalDelivery>=0.07 \
		mail/p5-Email-Simple>=1.91 \
		devel/p5-IPC-Run>=0.77

BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
