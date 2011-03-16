# $OpenBSD: Makefile,v 1.5 2011/03/16 23:14:44 jasper Exp $

COMMENT =	update dyndns.org with correct ip address

MODULES =	cpan
DISTNAME =	Net-DNS-DynDNS-0.96
CATEGORIES =	net

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	www/p5-libwww
BUILD_DEPENDS =	${RUN_DEPENDS}

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
