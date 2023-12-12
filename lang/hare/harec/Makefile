DISTNAME =	harec-0.0.0pl20231202
REVISION =	0

WANTLIB += c m

# C11
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	lang/qbe

# All archs need a newer GNU as
# gas-2.31.1 is not new enough for riscv64
.if ${MACHINE_ARCH:Mriscv64}
RUN_DEPENDS +=	devel/binutils
.else
RUN_DEPENDS +=	devel/gas
.endif

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--sysconfdir="${SYSCONFDIR}"
CONFIGURE_ENV =		AS="gas"

TEST_TARGET =	check

.include <bsd.port.mk>
