# $OpenBSD: Makefile,v 1.3 2020/07/03 21:45:38 sthen Exp $

COMMENT =	non-blocking, concurrent DNS server POE component

DISTNAME =	POE-Component-Server-DNS-0.32
REVISION =	0

CATEGORIES =	net

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		net/p5-POE-Component-Client-DNS-Recursive>=1.06 \
			net/p5-POE-Filter-DNS-TCP>=0.04 \
			devel/p5-POE>=1.004 \
			net/p5-Net-DNS>=0.58 \
			net/p5-POE-Component-Client-DNS>=1.051

PKG_ARCH =		*

MODCPAN_EXAMPLES =	Yes

.include <bsd.port.mk>
