# $OpenBSD: Makefile,v 1.4 2020/04/23 13:43:04 sthen Exp $

COMMENT =	YAML-1.1 parser and emitter for PHP

DISTNAME =	yaml-2.1.0
DIST_SUBDIR =	pecl

CATEGORIES =	textproc

# PHP
PERMIT_PACKAGE =	Yes

WANTLIB += yaml-0

MODULES =	lang/php/pecl

MODPHP_DO_SAMPLE = yaml

LIB_DEPENDS =	devel/libyaml

CONFIGURE_STYLE = gnu

.include <bsd.port.mk>
