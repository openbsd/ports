# $OpenBSD: Makefile,v 1.10 2018/08/10 11:17:22 bluhm Exp $

COMMENT =	build IPv4 and IPv6 address space hierarchies

DISTNAME =	Net-IPTrie-0.7
REVISION =	2

CATEGORIES =	net

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		net/p5-NetAddr-IP>=4.007

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
