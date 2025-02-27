BROKEN =	syscall (probably SYS_IOCTL on /dev/tty?)
# function not implemented
# Fatal: Micro could not initialize a Screen.

# github.com/creack/pty only supports these archs
ONLY_FOR_ARCHS = aarch64 arm amd64 i386

COMMENT =	modern and intuitive terminal-based text editor

MODGO_MODNAME =	github.com/zyedidia/micro/v2
MODGO_VERSION =	v2.0.14

DISTNAME =	micro-${MODGO_VERSION}
CATEGORIES =	editors
HOMEPAGE =	https://micro-editor.github.io/

# MIT "Expat" License
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

WRKDIST =		${WRKSRC}

MODULES =		lang/go
MODGO_TYPE =		bin

MODGO_LDFLAGS +=	-X github.com/zyedidia/micro/v2/internal/util.Version=${MODGO_VERSION:S/v//}

NO_TEST =	Yes

.include "modules.inc"
.include <bsd.port.mk>
