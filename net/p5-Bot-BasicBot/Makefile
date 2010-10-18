# $OpenBSD: Makefile,v 1.2 2010/10/18 18:36:51 espie Exp $

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

RUN_DEPENDS =	::net/p5-POE-Component-IRC

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Bot-BasicBot
	${INSTALL_DATA} ${WRKSRC}/examples/*.pl \
	    ${PREFIX}/share/examples/p5-Bot-BasicBot

.include <bsd.port.mk>
