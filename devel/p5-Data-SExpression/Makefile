# $OpenBSD: Makefile,v 1.1.1.1 2017/01/22 22:08:39 afresh1 Exp $

COMMENT =	parse Lisp S-Expressions into perl data structures
DISTNAME =	Data-SExpression-0.41
CATEGORIES =	devel
MAINTAINER =	Sean Levy <attila@stalphonsos.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

TEST_DEPENDS =		devel/p5-Test-Deep \
			devel/p5-Test-Memory-Cycle
RUN_DEPENDS =		devel/p5-Class-Accessor

CONFIGURE_STYLE =	modinst

PKG_ARCH =		*

.include <bsd.port.mk>
