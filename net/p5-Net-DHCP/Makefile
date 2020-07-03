# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:32 sthen Exp $

COMMENT =	Perl DHCP classes

DISTNAME =	Net-DHCP-0.696
CATEGORIES =	net
REVISION =	0

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

BUILD_DEPENDS =		devel/p5-Test-Warn

CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES = Yes

.include <bsd.port.mk>
