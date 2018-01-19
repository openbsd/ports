# $OpenBSD: Makefile.inc,v 1.10 2018/01/19 09:54:42 landry Exp $

CATEGORIES ?=		textproc x11
MASTER_SITES ?=		https://pwmt.org/projects/zathura/plugins/download/

# MIT
PERMIT_PACKAGE_CDROM ?=	Yes

RUN_DEPENDS ?=	devel/desktop-file-utils \
		textproc/zathura/core
LIB_DEPENDS +=	x11/girara>=0.2.8
BUILD_DEPENDS ?=	textproc/zathura/core>=0.3.8

MAKE_FLAGS ?=	VERBOSE=1 \
		DESKTOPPREFIX=${PREFIX}/share/applications

NO_TEST ?=	Yes
USE_GMAKE ?=	Yes

COMPILER ?=	base-clang ports-gcc
COMPILER_LANGS ?= c
