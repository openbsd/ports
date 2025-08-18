DISTNAME =	harec-${V}
DISTFILES =	harec-{harec/archive/}${V}${EXTRACT_SUFX}

REVISION =	0

WANTLIB += c m

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

BUILD_DEPENDS =	${RUN_DEPENDS}

RUN_DEPENDS =	devel/gas>=2.45p0 \
		lang/qbe

CONFIGURE_ENV =		AS="gas"

do-gen:
	cp ${WRKSRC}/configs/openbsd.mk ${WRKSRC}/config.mk
.if ${MACHINE_ARCH:Maarch64} || ${MACHINE_ARCH:Mriscv64}
	sed -i "s/x86_64/$$(arch -s)/g" ${WRKSRC}/config.mk
.endif

TEST_TARGET =	check

.include <bsd.port.mk>
