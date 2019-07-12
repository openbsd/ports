# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:45 sthen Exp $

COMMENT =	generate Math::Symbolic parser extensions

DISTNAME =	Math-SymbolicX-ParserExtensionFactory-3.02
CATEGORIES =	math
HOMEPAGE =	http://search.cpan.org/~smueller/Math-SymbolicX-ParserExtensionFactory/

REVISION =	0

# Perl
PERMIT_PACKAGE =		Yes

CPAN_AUTHOR =	SMUELLER

MODULES =	cpan
PKG_ARCH =	*
RUN_DEPENDS =	devel/p5-Parse-RecDescent \
		math/p5-Math-Symbolic

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
