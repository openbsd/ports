# $OpenBSD: Makefile,v 1.24 2019/07/12 20:48:36 sthen Exp $

COMMENT =	module for access to network card configuration information

MODULES =	cpan
DISTNAME =	IO-Interface-1.09
CATEGORIES =	net
REVISION =	1

HOMEPAGE =	https://github.com/lstein/LibIO-Interface-Perl

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Artistic/GPL
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

CONFIGURE_STYLE =	modbuild

# upstream switched to modbuild, commit c4de691
CFLAGS =	-D__USE_BSD -DSIOCGIFCONF -DHAVE_SOCKADDR_DL_STRUCT -DUSE_GETIFADDRS

.include <bsd.port.mk>
