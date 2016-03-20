# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:50 naddy Exp $

COMMENT =	simple irc bot baseclass

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Bot-BasicBot-0.89
CATEGORIES =	net

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Object-Pluggable \
		net/p5-POE-Component-IRC \
		net/p5-POE-Filter-IRCD \
		net/p5-IRC-Utils

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
