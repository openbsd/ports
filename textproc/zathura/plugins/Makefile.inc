CATEGORIES ?=		textproc x11
SITES ?=		https://pwmt.org/projects/${PROJECT}/download/
HOMEPAGE ?=		http://pwmt.org/projects/${PROJECT}/
EXTRACT_SUFX ?=		.tar.xz
DISTNAME ?=		${PROJECT}-${V}

# MIT
PERMIT_PACKAGE ?=	Yes

RUN_DEPENDS ?=		devel/desktop-file-utils \
			textproc/zathura/core
LIB_DEPENDS +=		x11/girara>=0.4.1
BUILD_DEPENDS ?=	textproc/zathura/core>=0.5.4

MODULES ?=		devel/meson
NO_TEST ?=		Yes

COMPILER ?=		base-clang ports-gcc
COMPILER_LANGS ?=	c
CONFIGURE_ARGS ?=	-Dtests=disabled # needs appstream-glib
