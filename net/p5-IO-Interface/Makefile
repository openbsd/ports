# $OpenBSD: Makefile,v 1.25 2021/10/31 10:18:38 ajacoutot Exp $

COMMENT =	module for access to network card configuration information

MODULES =	cpan
DISTNAME =	IO-Interface-1.09
CATEGORIES =	net
REVISION =	2

HOMEPAGE =	https://github.com/lstein/LibIO-Interface-Perl

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

# Artistic/GPL
PERMIT_PACKAGE =	Yes

WANTLIB += c perl

CONFIGURE_STYLE =	modbuild

# upstream switched to modbuild, commit c4de691
CFLAGS +=	-D__USE_BSD -DSIOCGIFCONF -DHAVE_SOCKADDR_DL_STRUCT -DUSE_GETIFADDRS

.include <bsd.port.mk>
