# $OpenBSD: Makefile,v 1.5 2016/03/20 19:56:52 naddy Exp $

COMMENT =	Perl DHCP classes

DISTNAME =	Net-DHCP-0.696
CATEGORIES =	net

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =	cpan
PKG_ARCH =	*

BUILD_DEPENDS =		devel/p5-Test-Warn

CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES = Yes

.include <bsd.port.mk>
