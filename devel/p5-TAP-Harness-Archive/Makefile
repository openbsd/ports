# $OpenBSD: Makefile,v 1.6 2016/03/20 19:56:35 naddy Exp $

COMMENT =	create an archive of TAP results

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	TAP-Harness-Archive-0.18
CATEGORIES =	devel

CONFIGURE_STYLE =	modbuild

MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-YAML-Tiny

.include <bsd.port.mk>
