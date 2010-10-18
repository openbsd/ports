# $OpenBSD: Makefile,v 1.2 2010/10/18 20:52:07 espie Exp $

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
USE_GROFF =	Yes

.include <bsd.port.mk>
