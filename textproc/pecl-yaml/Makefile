# $OpenBSD: Makefile,v 1.1.1.1 2019/05/04 14:04:16 sthen Exp $

COMMENT =	YAML-1.1 parser and emitter for PHP

DISTNAME =	yaml-2.0.4
DIST_SUBDIR =	pecl

CATEGORIES =	textproc

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += yaml-0

MODULES =	lang/php/pecl

MODPHP_DO_SAMPLE = yaml

LIB_DEPENDS =	devel/libyaml

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
