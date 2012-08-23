# $OpenBSD: Makefile,v 1.2 2012/08/23 15:50:05 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	deserializer for Adobe Action Message Format

DISTNAME =	Storable-AMF-1.00
REVISION =	0
CATEGORIES =	multimedia
CPAN_AUTHOR =	GRIAN

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

WANTLIB += c

MODULES =	cpan

REGRESS_DEPENDS = converters/p5-JSON-XS \
		devel/p5-boolean \
		devel/p5-Test-Pod

.include <bsd.port.mk>
