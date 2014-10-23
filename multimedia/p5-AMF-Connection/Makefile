# $OpenBSD: Makefile,v 1.3 2014/10/23 13:47:45 nigel Exp $

COMMENT =	AMF client to connect to remote FLEX AIR service

DISTNAME =	AMF-Connection-0.32
CATEGORIES =	multimedia net
CPAN_AUTHOR =	AREGGIORI

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes

MODULES =	cpan

RUN_DEPENDS =	multimedia/p5-Storable-AMF \
		www/p5-libwww

BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
