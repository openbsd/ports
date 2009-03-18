# $OpenBSD: Makefile,v 1.1.1.1 2009/03/18 19:15:47 giovanni Exp $

COMMENT = 	library for creating easy email filters

DISTNAME =	Email-Filter-1.032
CATEGORIES =	mail

HOMEPAGE =	http://emailproject.perl.org/

MAINTAINER =	Armin Wolfermann <armin@wolfermann.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	cpan
CPAN_AUTHOR =	RJBS

RUN_DEPENDS =	:p5-Class-Trigger->=0.08:devel/p5-Class-Trigger \
		:p5-Email-LocalDelivery->=0.07:mail/p5-Email-LocalDelivery \
		:p5-Email-Simple->=1.91:mail/p5-Email-Simple \
		:p5-IPC-Run->=0.77:devel/p5-IPC-Run

BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
