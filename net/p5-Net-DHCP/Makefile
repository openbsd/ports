# $OpenBSD: Makefile,v 1.6 2019/07/12 21:15:35 sthen Exp $

COMMENT =	Perl DHCP classes

DISTNAME =	Net-DHCP-0.696
CATEGORIES =	net

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

BUILD_DEPENDS =		devel/p5-Test-Warn

CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES = Yes

.include <bsd.port.mk>
