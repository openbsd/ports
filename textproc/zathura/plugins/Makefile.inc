CATEGORIES ?=		textproc x11
MASTER_SITES ?=		https://pwmt.org/projects/${PROJECT}/download/
HOMEPAGE ?=	http://pwmt.org/projects/${PROJECT}/
EXTRACT_SUFX ?=		.tar.xz
DISTNAME ?=	${PROJECT}-${V}

# MIT
PERMIT_PACKAGE ?=	Yes

RUN_DEPENDS ?=	devel/desktop-file-utils \
		textproc/zathura/core
LIB_DEPENDS +=	x11/girara>=0.3.2
BUILD_DEPENDS ?=	textproc/zathura/core>=0.4.5

MODULES ?=	devel/meson
NO_TEST ?=	Yes

COMPILER ?=	base-clang ports-gcc
COMPILER_LANGS ?= c
