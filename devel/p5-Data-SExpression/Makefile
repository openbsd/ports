# $OpenBSD: Makefile,v 1.2 2019/07/12 20:44:49 sthen Exp $

COMMENT =	parse Lisp S-Expressions into perl data structures
DISTNAME =	Data-SExpression-0.41
CATEGORIES =	devel
MAINTAINER =	Sean Levy <attila@stalphonsos.com>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-Memory-Cycle
RUN_DEPENDS =		devel/p5-Class-Accessor

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

.include <bsd.port.mk>
