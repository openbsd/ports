V =		0.24.2
DISTNAME =	harec-${V}
DISTFILES =	harec-{harec/archive/}${V}${EXTRACT_SUFX}

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

CONFIGURE_ENV =		AS="gas"

do-gen:
	cp ${WRKSRC}/configs/openbsd.mk ${WRKSRC}/config.mk

TEST_TARGET =	check

.include <bsd.port.mk>
