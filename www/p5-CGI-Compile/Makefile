# $OpenBSD: Makefile,v 1.11 2020/08/18 01:39:12 afresh1 Exp $

COMMENT =	compile .cgi scripts to a code reference

DISTNAME =	CGI-Compile-0.25

CATEGORIES =	www

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-File-pushd

TEST_DEPENDS =		devel/p5-Switch \
			devel/p5-Test-NoWarnings \
			devel/p5-Test-Requires \
			devel/p5-Try-Tiny \
			sysutils/p5-Capture-Tiny \
			www/p5-CGI \
			www/p5-Plack

# Optional dependencies to avoid skipping tests
TEST_DEPENDS +=		devel/p5-Sub-Identify \
			www/p5-CGI-Emulate-PSGI

MAKE_ENV =		TEST_POD=Yes AUTHOR_TESTING=Yes

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =	*

.include <bsd.port.mk>
