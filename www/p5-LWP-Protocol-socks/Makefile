# $OpenBSD: Makefile,v 1.7 2019/07/12 20:50:56 sthen Exp $

COMMENT =	adds support for SOCKS to p5-libwww

DISTNAME =	LWP-Protocol-socks-1.7
CATEGORIES =	www
CPAN_AUTHOR =	SCR

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	security/p5-IO-Socket-SSL>=0.96 \
		net/p5-IO-Socket-Socks>=0.2 \
		www/p5-libwww>=6.02 \
		www/p5-LWP-Protocol-https>=6.02
BUILD_DEPENDS =	${RUN_DEPENDS}


.include <bsd.port.mk>
