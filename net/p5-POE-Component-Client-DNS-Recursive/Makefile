# $OpenBSD: Makefile,v 1.1.1.1 2019/02/07 07:18:18 giovanni Exp $

COMMENT =	recursive DNS client for POE

DISTNAME =	POE-Component-Client-DNS-Recursive-1.12

CATEGORIES =	net

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-POE>=1.004 \
			net/p5-Net-DNS \
			net/p5-Net-IP-Minimal

PKG_ARCH =		*

.include <bsd.port.mk>
