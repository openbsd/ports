# $OpenBSD: Makefile,v 1.4 2010/12/03 11:45:41 ajacoutot Exp $

COMMENT =	update dyndns.org with correct ip address

MODULES =	cpan
DISTNAME =	Net-DNS-DynDNS-0.95
REVISION =	0
CATEGORIES =	net
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	www/p5-libwww
BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
