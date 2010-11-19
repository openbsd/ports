# $OpenBSD: Makefile,v 1.4 2010/11/19 22:31:35 espie Exp $

COMMENT =	simple irc bot baseclass

MODULES =	cpan
DISTNAME =	Bot-BasicBot-0.81
CATEGORIES =	net
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	net/p5-POE-Component-IRC

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
