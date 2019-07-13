# $OpenBSD: Makefile.inc,v 1.12 2019/07/13 10:59:27 sthen Exp $

CATEGORIES ?=		textproc x11
MASTER_SITES ?=		https://pwmt.org/projects/zathura/plugins/download/
EXTRACT_SUFX ?=		.tar.xz

# MIT
PERMIT_PACKAGE ?=	Yes

RUN_DEPENDS ?=	devel/desktop-file-utils \
		textproc/zathura/core
LIB_DEPENDS +=	x11/girara>=0.2.9
BUILD_DEPENDS ?=	textproc/zathura/core>=0.3.9

MODULES ?=	devel/meson
NO_TEST ?=	Yes

COMPILER ?=	base-clang ports-gcc
COMPILER_LANGS ?= c
