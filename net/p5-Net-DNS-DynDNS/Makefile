# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:32 sthen Exp $

COMMENT =	update dyndns.org with correct ip address

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Net-DNS-DynDNS-0.9994
CATEGORIES =	net
REVISION =	0

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	www/p5-libwww \
		www/p5-LWP-Protocol-https
BUILD_DEPENDS =	${RUN_DEPENDS}

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
