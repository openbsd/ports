# $OpenBSD: Makefile,v 1.5 2014/11/11 07:15:08 benoit Exp $

COMMENT =	generate Math::Symbolic parser extensions

DISTNAME =	Math-SymbolicX-ParserExtensionFactory-3.02
CATEGORIES =	math
HOMEPAGE =	http://search.cpan.org/~smueller/Math-SymbolicX-ParserExtensionFactory/

REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM =		Yes

CPAN_AUTHOR =	SMUELLER

MODULES =	cpan
RUN_DEPENDS =	devel/p5-Parse-RecDescent \
		math/p5-Math-Symbolic

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modbuild
USE_GROFF =	Yes

.include <bsd.port.mk>
