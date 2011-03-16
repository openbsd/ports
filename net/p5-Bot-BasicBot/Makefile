# $OpenBSD: Makefile,v 1.7 2011/03/16 12:08:25 jasper Exp $

COMMENT =	simple irc bot baseclass

MODULES =	cpan
DISTNAME =	Bot-BasicBot-0.84
REVISION =	0
CATEGORIES =	net
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-Object-Pluggable \
		net/p5-POE-Component-IRC \
		net/p5-POE-Filter-IRCD

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
