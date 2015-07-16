# $OpenBSD: Makefile,v 1.12 2015/07/16 15:15:04 afresh1 Exp $

COMMENT =	library for sending email

MODULES =	cpan

DISTNAME =	Email-Sender-1.300018
CATEGORIES =	mail

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-List-MoreUtils>=0 \
		devel/p5-Module-Runtime>=0 \
		devel/p5-Moo>=0 \
		devel/p5-MooX-Types-MooseLike>=0 \
		devel/p5-Sub-Exporter>=0 \
		devel/p5-Throwable>=0.200003 \
		devel/p5-Try-Tiny>=0 \
		mail/p5-Email-Abstract>=3.006 \
		mail/p5-Email-Address>=0 \
		mail/p5-Email-Simple>=1.998

TEST_DEPENDS =	sysutils/p5-Capture-Tiny>=0.08

# Addiional modules to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Test-MockObject \
		devel/p5-Sub-Override

.include <bsd.port.mk>
