# LP64 archs with Go:
ONLY_FOR_ARCHS = aarch64 amd64 mips64 riscv64
# # github.com/spdx/gordf/rdfloader/xmlreader
# ../../../go/pkg/mod/github.com/spdx/gordf@v0.0.0-20201111095634-7098f93598fb/rdfloader/xmlreader/xmlreader.go:213:
# 27: WHITESPACE (untyped int constant 4294977024) overflows int

COMMENT =	scan your project's dependencies for vulnerabilities

V =		2.2.2
MODGO_MODNAME =	github.com/google/osv-scanner/v2
MODGO_VERSION =	v${V}

DISTNAME =	osv-scanner-${V}

CATEGORIES =	security

HOMEPAGE =	https://github.com/google/osv-scanner

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

WANTLIB += c pthread

# Tests fail => try to request infos via network
do-test:
	cd ${WRKSRC} && ${MODGO_TEST_CMD} ./...

.include "modules.inc"

.include <bsd.port.mk>
