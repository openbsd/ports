COMMENT =		lightweight and flexible command-line JSON processor

V =			1.7
DISTNAME =		jq-$V

SHARED_LIBS +=	jq                        2.0 # 1.4

CATEGORIES =		textproc

HOMEPAGE =		https://jqlang.github.io/jq/

# MIT (code), CC-BY-3.0 (docs)
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c m onig pthread

LIB_DEPENDS =		textproc/oniguruma

SITES =			https://github.com/jqlang/jq/releases/download/jq-$V/

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-oniguruma=${LOCALBASE}

# no need for python to regenerate existing docs and manual
CONFIGURE_ARGS +=	--disable-docs

# makes all tests fail with SIGILL
CONFIGURE_ARGS +=	--disable-valgrind

.include <bsd.port.mk>
