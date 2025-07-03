DISTNAME =	hare-${V}
DISTFILES =	hare-{hare/archive/}${V}${EXTRACT_SUFX}

WANTLIB += c

BUILD_DEPENDS =	${RUN_DEPENDS} \
		textproc/scdoc

RUN_DEPENDS =	lang/hare/harec=${V}

MAKE_FLAGS =	MANDIR="${PREFIX}/man"

TEST_TARGET =	check

PORTHOME =	${WRKDIST}

do-gen:
	cp ${WRKSRC}/configs/openbsd.mk ${WRKSRC}/config.mk
.if ${MACHINE_ARCH:Maarch64} || ${MACHINE_ARCH:Mriscv64}
	sed -i "s/x86_64/$$(arch -s)/g" ${WRKSRC}/config.mk
.endif

.include <bsd.port.mk>
