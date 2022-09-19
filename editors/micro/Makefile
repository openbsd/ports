BROKEN-aarch64 = pty@v2.0.0+incompatible/doc.go:15:9: undefined: open
BROKEN-mips64 =	pty@v2.0.0+incompatible/doc.go:15:9: undefined: open

COMMENT =	modern and intuitive terminal-based text editor

MODGO_MODNAME =	github.com/zyedidia/micro/v2
MODGO_VERSION =	v2.0.11

# Snagged from https://github.com/zyedidia/micro/releases/tag/${MODGO_VERSION}
TAG_HASH =	225927b

DISTNAME =	micro-${MODGO_VERSION}
CATEGORIES =	editors
HOMEPAGE =	https://micro-editor.github.io/

# MIT "Expat" License
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

WRKDIST =		${WRKSRC}

MODULES =		lang/go
MODGO_TYPE =            bin

MODGO_LDFLAGS +=	-X github.com/zyedidia/micro/v2/internal/util.Version=${MODGO_VERSION:S/v//}
MODGO_LDFLAGS +=	-X github.com/zyedidia/micro/v2/internal/util.CommitHash=${TAG_HASH}

NO_TEST =	Yes

.include "modules.inc"
.include <bsd.port.mk>
