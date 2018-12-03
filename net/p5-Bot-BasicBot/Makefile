# $OpenBSD: Makefile,v 1.12 2018/12/03 21:33:48 bluhm Exp $

COMMENT =	simple irc bot baseclass

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Bot-BasicBot-0.93
CATEGORIES =	net

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-POE \
		net/p5-POE-Component-IRC>=6.90 \
		net/p5-IRC-Utils

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
