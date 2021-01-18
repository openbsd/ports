# $OpenBSD: Makefile,v 1.1.1.1 2021/01/18 13:28:51 robert Exp $

COMMENT =	NativeTrait-like behavior for Moo
DISTNAME =	MooX-HandlesVia-0.001009
CATEGORIES =	devel
PKG_ARCH =	*

# Perl
PERMIT_PACKAGE =	Yes
MODULES =		cpan

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Data-Perl \
			devel/p5-Moo
TEST_DEPENDS =		devel/p5-Test-Fatal \
			devel/p5-Test-Exception \
			devel/p5-MooX-Types-MooseLike

.include <bsd.port.mk>
