# $OpenBSD: Makefile,v 1.19 2021/12/27 00:52:56 afresh1 Exp $

COMMENT =	library for sending email

MODULES =	cpan
PKG_ARCH =	*

DISTNAME =	Email-Sender-2.500
CATEGORIES =	mail

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Module-Runtime \
		devel/p5-Moo>=2.0 \
		devel/p5-MooX-Types-MooseLike>=0.15 \
		devel/p5-Sub-Exporter \
		devel/p5-Throwable>=0.200003 \
		devel/p5-Try-Tiny \
		mail/p5-Email-Abstract>=3.006 \
		mail/p5-Email-Address \
		mail/p5-Email-Simple>=1.998

TEST_DEPENDS =	sysutils/p5-Capture-Tiny>=0.08

# Additional modules to avoid skipping tests
TEST_DEPENDS +=	devel/p5-Test-MockObject \
		devel/p5-Sub-Override

.include <bsd.port.mk>
