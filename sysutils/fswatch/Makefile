COMMENT =	file change monitor

DISTNAME =	fswatch-${V}
V =		1.17.1

SHARED_LIBS +=	fswatch	0.0 # 13.0

CATEGORIES =	sysutils

HOMEPAGE =	https://emcrisostomo.github.io/fswatch/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c m iconv intl

SITES =		https://github.com/emcrisostomo/fswatch/releases/download/${V}/

COMPILER =	base-clang ports-gcc base-gcc

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

LIB_DEPENDS +=	converters/libiconv \
		devel/gettext,-runtime

.include <bsd.port.mk>
