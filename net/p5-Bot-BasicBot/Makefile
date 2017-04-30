# $OpenBSD: Makefile,v 1.11 2017/04/30 11:19:12 benoit Exp $

COMMENT =	simple irc bot baseclass

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Bot-BasicBot-0.91
CATEGORIES =	net

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Object-Pluggable \
		net/p5-POE-Component-IRC \
		net/p5-POE-Filter-IRCD \
		net/p5-IRC-Utils

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
