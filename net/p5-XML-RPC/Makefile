# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:42 sthen Exp $

COMMENT =	pure Perl implementation for an XML-RPC client and server

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	XML-RPC-1.1
CATEGORIES =	net devel

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		textproc/p5-XML-TreePP \
			www/p5-LWP-Protocol-https \
			www/p5-libwww

.include <bsd.port.mk>
