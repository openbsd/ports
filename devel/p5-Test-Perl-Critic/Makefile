# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:15 sthen Exp $

COMMENT =	test framework to run Perl::Critic

DISTNAME =	Test-Perl-Critic-1.04
REVISION =	0

CATEGORIES =	devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-MCE>=1.827 \
			devel/p5-Perl-Critic>=1.105

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
