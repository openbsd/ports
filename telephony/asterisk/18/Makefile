# $OpenBSD: Makefile,v 1.2 2021/11/02 12:40:57 sthen Exp $

VER=		18.8.0
PJ_V=		2.10
SHLIB_V=	0.0
VERSION_SPEC=	>=18.0,<19.0

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
