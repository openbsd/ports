# $OpenBSD: Makefile,v 1.7 2016/05/07 12:40:56 pascal Exp $

COMMENT =	create an archive of TAP results

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	TAP-Harness-Archive-0.18
CATEGORIES =	devel
REVISION =	0

CONFIGURE_STYLE =	modbuild

MAINTAINER =	Pascal Stumpf <pascal@stumpf.co>

# Perl
PERMIT_PACKAGE_CDROM=   Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-YAML-Tiny

.include <bsd.port.mk>
