# $OpenBSD: Makefile,v 1.14 2020/02/19 22:11:27 bluhm Exp $

COMMENT =	test framework to run Perl::Critic

DISTNAME =	Test-Perl-Critic-1.04

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-MCE>=1.827 \
			devel/p5-Perl-Critic>=1.105

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
