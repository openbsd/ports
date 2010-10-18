# $OpenBSD: Makefile,v 1.2 2010/10/18 18:36:52 espie Exp $

COMMENT =	update dyndns.org with correct ip address

MODULES =	cpan
DISTNAME =	Net-DNS-DynDNS-0.95
CATEGORIES =	net
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	::www/p5-libwww
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
