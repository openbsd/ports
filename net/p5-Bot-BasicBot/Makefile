# $OpenBSD: Makefile,v 1.6 2011/03/16 08:48:31 jasper Exp $

COMMENT =	simple irc bot baseclass

MODULES =	cpan
DISTNAME =	Bot-BasicBot-0.84
CATEGORIES =	net
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	devel/p5-Object-Pluggable \
		net/p5-POE-Component-IRC

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
