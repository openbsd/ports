# $OpenBSD: Makefile,v 1.9 2021/10/25 12:33:19 sthen Exp $

COMMENT=	YAML-1.1 parser and emitter for PHP

DISTNAME=	yaml-2.2.1
DIST_SUBDIR=	pecl
REVISION=	2

CATEGORIES=	textproc

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB += yaml-0

MODULES=	lang/php/pecl

MODPHP_DO_SAMPLE= yaml

LIB_DEPENDS=	devel/libyaml

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
