# $OpenBSD: Makefile,v 1.9 2014/11/25 10:35:11 benoit Exp $

COMMENT =	simple irc bot baseclass

MODULES =	cpan
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
