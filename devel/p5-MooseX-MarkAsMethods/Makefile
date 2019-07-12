# $OpenBSD: Makefile,v 1.5 2019/07/12 20:45:01 sthen Exp $

COMMENT =	mark overload code symbols as methods

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	MooseX-MarkAsMethods-0.15
CATEGORIES =	devel

# LGPLv2.1
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-B-Hooks-EndOfScope \
		devel/p5-Moose \
		devel/p5-namespace-autoclean>=0.12

.include <bsd.port.mk>
