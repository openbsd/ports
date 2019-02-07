# $OpenBSD: Makefile,v 1.1.1.1 2019/02/07 07:16:08 giovanni Exp $

COMMENT =	POE Filter to handle DNS over TCP connections

DISTNAME =	POE-Filter-DNS-TCP-0.06

CATEGORIES =	net

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-POE>=1.311 \
			net/p5-Net-DNS>=0.66

PKG_ARCH =		*

.include <bsd.port.mk>
