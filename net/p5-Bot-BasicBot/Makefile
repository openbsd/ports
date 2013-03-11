# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:50 espie Exp $

COMMENT =	simple irc bot baseclass

MODULES =	cpan
DISTNAME =	Bot-BasicBot-0.84
REVISION =	0
CATEGORIES =	net
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes

RUN_DEPENDS =	devel/p5-Object-Pluggable \
		net/p5-POE-Component-IRC \
		net/p5-POE-Filter-IRCD

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
