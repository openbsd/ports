DISTNAME =	harec-0.0.0pl20231202

WANTLIB += c m

# C11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	${RUN_DEPENDS}

# Needs a newer GNU as
RUN_DEPENDS =	devel/binutils \
		lang/qbe

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--sysconfdir="${SYSCONFDIR}"
CONFIGURE_ENV =		AS="gas"

TEST_TARGET =	check

.include <bsd.port.mk>
