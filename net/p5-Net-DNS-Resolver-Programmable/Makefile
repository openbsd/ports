# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:52 naddy Exp $

COMMENT =		programmable DNS resolver class for offline emulation of DNS

DISTNAME =		Net-DNS-Resolver-Programmable-v0.003
REVISION =		0
PKGNAME =		p5-${DISTNAME:S/-v/-/}
CATEGORIES =		net

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		net/p5-Net-DNS

.include <bsd.port.mk>
