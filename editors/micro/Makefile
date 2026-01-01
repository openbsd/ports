COMMENT=	modern and intuitive terminal-based text editor

MODGO_MODNAME=	github.com/zyedidia/micro/v2
MODGO_VERSION=	v2.0.15

DISTNAME=	micro-${MODGO_VERSION}
CATEGORIES=	editors
HOMEPAGE=	https://micro-editor.github.io/

# MIT "Expat" License
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=	lang/go
MODGO_TYPE=	bin

MODGO_LDFLAGS=	-X github.com/zyedidia/micro/v2/internal/util.Version=${MODGO_VERSION}

NO_TEST=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/assets/packaging/micro.1 ${PREFIX}/man/man1/

.include "modules.inc"
.include <bsd.port.mk>
