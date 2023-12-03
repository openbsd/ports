DISTNAME =	hare-0.0.0pl20231202

WANTLIB += c

BUILD_DEPENDS =	${RUN_DEPENDS} \
		textproc/scdoc

RUN_DEPENDS =	lang/hare/harec

MAKE_FLAGS =	MANDIR="${PREFIX}/man"

TEST_TARGET =	check

PORTHOME =	${WRKDIST}

do-gen:
	cp ${WRKSRC}/configs/openbsd.mk ${WRKSRC}/config.mk
	sed -i "s/aarch64-//g" ${WRKSRC}/config.mk
	sed -i "s/riscv64-//g" ${WRKSRC}/config.mk
.if ${MACHINE_ARCH:Marm64}
	echo "ARCH = $$(arch -s)" >> ${WRKSRC}/config.mk
.endif

.include <bsd.port.mk>
