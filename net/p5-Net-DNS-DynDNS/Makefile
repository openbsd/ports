# $OpenBSD: Makefile,v 1.11 2019/07/12 20:48:37 sthen Exp $

COMMENT =	update dyndns.org with correct ip address

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Net-DNS-DynDNS-0.9993
CATEGORIES =	net

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	www/p5-libwww
BUILD_DEPENDS =	${RUN_DEPENDS}

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
