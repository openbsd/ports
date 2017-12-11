# $OpenBSD: Makefile,v 1.5 2017/12/11 13:00:36 bluhm Exp $

COMMENT =	pure Perl implementation for an XML-RPC client and server

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	XML-RPC-1.1
CATEGORIES =	net devel

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		textproc/p5-XML-TreePP \
			www/p5-LWP-Protocol-https \
			www/p5-libwww

.include <bsd.port.mk>
