# $OpenBSD: Makefile,v 1.3 2020/07/03 21:45:38 sthen Exp $

COMMENT =	POE Filter to handle DNS over TCP connections

DISTNAME =	POE-Filter-DNS-TCP-0.06
REVISION =	0

CATEGORIES =	net

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-POE>=1.311 \
			net/p5-Net-DNS>=0.66

PKG_ARCH =		*

.include <bsd.port.mk>
