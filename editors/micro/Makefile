BROKEN =	uses syscall

# github.com/creack/pty only supports these archs
ONLY_FOR_ARCHS = aarch64 arm amd64 i386 mips64

COMMENT =	modern and intuitive terminal-based text editor

MODGO_MODNAME =	github.com/zyedidia/micro/v2
MODGO_VERSION =	v2.0.13

# Snagged from https://github.com/zyedidia/micro/releases/tag/${MODGO_VERSION}
TAG_HASH =	68d88b5

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
