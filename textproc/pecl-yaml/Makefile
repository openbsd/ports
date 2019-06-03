# $OpenBSD: Makefile,v 1.2 2019/06/03 16:06:58 sthen Exp $

COMMENT =	YAML-1.1 parser and emitter for PHP

DISTNAME =	yaml-2.0.4
DIST_SUBDIR =	pecl

CATEGORIES =	textproc

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP
PERMIT_PACKAGE =	Yes

WANTLIB += yaml-0

MODULES =	lang/php/pecl

MODPHP_DO_SAMPLE = yaml

LIB_DEPENDS =	devel/libyaml

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
