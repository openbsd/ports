COMMENT =	unix-way web crawler

MODGO_MODNAME =	github.com/s0rg/crawley
MODGO_VERSION =	v1.7.10
DISTNAME =	crawley-${MODGO_VERSION}

CATEGORIES =	net
HOMEPAGE =	https://github.com/s0rg/crawley
MAINTAINER =	Russ Sharek <bsdclown@disroot.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread
MODULES =	lang/go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/crawley
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/crawley

do-test:
	cd ${WRKSRC} && CGO_ENABLED=1 ${MODGO_CMD} test -count 1 -v \
	-tags=test -coverprofile="cover.out" ./...

.include "modules.inc"
.include <bsd.port.mk>
