# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:50 naddy Exp $

COMMENT =	AMF client to connect to remote FLEX AIR service

DISTNAME =	AMF-Connection-0.32
CATEGORIES =	multimedia net
CPAN_AUTHOR =	AREGGIORI

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	multimedia/p5-Storable-AMF \
		www/p5-libwww

BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
