COMMENT=	Unicode line and word/grapheme breaking algorithms

# 8.0 removes the incremental line-breaking API (lb_init_break_context,
# lb_process_next_char) and lb_get_char_class; required by games/naev
# at least as of 0.13.5
V=		7.0
REVISION=	0
DISTNAME=	libunibreak-${V}

HOMEPAGE=	https://github.com/adah1972/libunibreak/
SITES=		https://github.com/adah1972/libunibreak/releases/download/libunibreak_${V:S/./_/}/

SHARED_LIBS +=  unibreak             1.2      # 7.0

CATEGORIES=	textproc

# Zlib/PNG license
PERMIT_PACKAGE=	Yes

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

CONFIGURE_STYLE= gnu
DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
