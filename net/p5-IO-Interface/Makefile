# $OpenBSD: Makefile,v 1.20 2014/12/29 10:48:15 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	module for access to network card configuration information

MODULES =	cpan
DISTNAME =	IO-Interface-1.09
CATEGORIES =	net

HOMEPAGE =	https://github.com/lstein/LibIO-Interface-Perl

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Artistic/GPL
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

# upstream switched to modbuild, commit c4de691
CFLAGS =	-D__USE_BSD -DSIOCGIFCONF -DHAVE_SOCKADDR_DL_STRUCT -DUSE_GETIFADDRS

.include <bsd.port.mk>
