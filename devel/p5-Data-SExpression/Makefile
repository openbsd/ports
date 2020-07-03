# $OpenBSD: Makefile,v 1.3 2020/07/03 21:44:46 sthen Exp $

COMMENT =	parse Lisp S-Expressions into perl data structures
DISTNAME =	Data-SExpression-0.41
CATEGORIES =	devel
MAINTAINER =	Sean Levy <attila@stalphonsos.com>
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-Memory-Cycle
RUN_DEPENDS =		devel/p5-Class-Accessor

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

.include <bsd.port.mk>
