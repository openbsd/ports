# $OpenBSD: Makefile,v 1.5 2010/12/03 11:45:41 ajacoutot Exp $

COMMENT =	simple irc bot baseclass

MODULES =	cpan
DISTNAME =	Bot-BasicBot-0.81
REVISION =	0
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
