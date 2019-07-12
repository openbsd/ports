# $OpenBSD: Makefile,v 1.8 2019/07/12 21:02:17 sthen Exp $

COMMENT =	create an archive of TAP results

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	TAP-Harness-Archive-0.18
CATEGORIES =	devel
REVISION =	0

CONFIGURE_STYLE =	modbuild

MAINTAINER =	Pascal Stumpf <pascal@stumpf.co>

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/p5-YAML-Tiny

.include <bsd.port.mk>
