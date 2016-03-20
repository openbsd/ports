# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:52 naddy Exp $

COMMENT =	update dyndns.org with correct ip address

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Net-DNS-DynDNS-0.9993
CATEGORIES =	net

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	www/p5-libwww
BUILD_DEPENDS =	${RUN_DEPENDS}

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
