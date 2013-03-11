# $OpenBSD: Makefile,v 1.2 2013/03/11 11:35:44 espie Exp $

COMMENT =	AMF client to connect to remote FLEX AIR service

DISTNAME =	AMF-Connection-0.30
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
