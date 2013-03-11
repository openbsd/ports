# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:21 espie Exp $

COMMENT =	create an archive of TAP results

MODULES =	cpan
DISTNAME =	TAP-Harness-Archive-0.14
CATEGORIES =	devel

CONFIGURE_STYLE =	modbuild

MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-YAML-Tiny

.include <bsd.port.mk>
