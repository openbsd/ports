# $OpenBSD: Makefile,v 1.1.1.1 2009/06/12 17:01:31 jasper Exp $

COMMENT =	generate Math::Symbolic parser extensions

DISTNAME =	Math-SymbolicX-ParserExtensionFactory-3.02
CATEGORIES =	math
HOMEPAGE =	http://search.cpan.org/~smueller/Math-SymbolicX-ParserExtensionFactory/
MAINTAINER =	Markus Bergkvist <markus.bergkvist@telia.com>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CPAN_AUTHOR =	SMUELLER

MODULES =	cpan
RUN_DEPENDS =	::devel/p5-Parse-RecDescent \
		::math/p5-Math-Symbolic

MAKE_ENV +=	TEST_POD=1

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
