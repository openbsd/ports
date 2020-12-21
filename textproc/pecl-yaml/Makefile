# $OpenBSD: Makefile,v 1.6 2020/12/21 17:00:00 sthen Exp $

COMMENT =	YAML-1.1 parser and emitter for PHP

DISTNAME =	yaml-2.2.1
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
