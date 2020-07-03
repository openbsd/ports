# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:34 sthen Exp $

COMMENT =	build IPv4 and IPv6 address space hierarchies

DISTNAME =	Net-IPTrie-0.7
REVISION =	3

CATEGORIES =	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		net/p5-NetAddr-IP>=4.007

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
