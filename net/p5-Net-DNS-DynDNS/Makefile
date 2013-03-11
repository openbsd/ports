# $OpenBSD: Makefile,v 1.6 2013/03/11 11:35:52 espie Exp $

COMMENT =	update dyndns.org with correct ip address

MODULES =	cpan
DISTNAME =	Net-DNS-DynDNS-0.96
CATEGORIES =	net

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-libwww
BUILD_DEPENDS =	${RUN_DEPENDS}

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
