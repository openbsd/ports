# $OpenBSD: go.port.mk,v 1.1 2015/05/15 07:30:41 jasper Exp $

ONLY_FOR_ARCHS ?=	${GO_ARCHS}

MODGO_BUILDDEP ?=	Yes

MODGO_RUN_DEPENDS =	lang/go
MODGO_BUILD_DEPENDS =	lang/go

.if ${NO_BUILD:L} == "no" && ${MODGO_BUILDDEP:L} == "yes"
BUILD_DEPENDS +=	${MODGO_BUILD_DEPENDS}
.endif

GO_PKG ?=		pkg/tool/openbsd_${MACHINE_ARCH:S/i386/386/}

SUBST_VARS +=		GO_PKG

GOPATH ?=		"${WRKSRC}:${LOCALBASE}/go"
