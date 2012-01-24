# $OpenBSD: Makefile,v 1.1.1.1 2012/01/24 22:15:09 nigel Exp $

COMMENT =	AMF client to connect to remote FLEX AIR service

DISTNAME =	AMF-Connection-0.30
CATEGORIES =	multimedia net
CPAN_AUTHOR =	AREGGIORI

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MODULES =	cpan

RUN_DEPENDS =	multimedia/p5-Storable-AMF \
		www/p5-libwww

BUILD_DEPENDS = ${RUN_DEPENDS}

.include <bsd.port.mk>
