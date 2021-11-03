# $OpenBSD: Makefile,v 1.2 2021/11/03 22:24:37 sthen Exp $

VER=		16.22.0
PJ_V=		2.10
SHLIB_V=	0.0
VERSION_SPEC=	>=16.0,<17.0
PORTROACH=	limit:^16\.

.include <bsd.port.mk>

# bsd.port.mk is needed for CHOSEN_COMPILER
.if ${CHOSEN_COMPILER} == ports-gcc
CFLAGS +=		-ftrampolines
WANTLIB-main +=		${MODGCC4_CPPWANTLIB}
.else
BUILD_DEPENDS +=	devel/blocksruntime
LDFLAGS +=		-lBlocksRuntime
WANTLIB-main +=		${COMPILER_LIBCXX}
.endif
