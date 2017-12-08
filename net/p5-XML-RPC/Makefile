# $OpenBSD: Makefile,v 1.4 2017/12/08 12:36:51 espie Exp $

COMMENT =	pure Perl implementation for an XML-RPC client and server

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	XML-RPC-0.9
CATEGORIES =	net devel
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		textproc/p5-XML-TreePP

CPAN_AUTHOR =		DAAN
CONFIGURE_STYLE =	perl

.include <bsd.port.mk>
