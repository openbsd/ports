# LP64 archs with Go:
ONLY_FOR_ARCHS = aarch64 amd64 mips64 riscv64
# # github.com/spdx/gordf/rdfloader/xmlreader
# ../../../go/pkg/mod/github.com/spdx/gordf@v0.0.0-20201111095634-7098f93598fb/rdfloader/xmlreader/xmlreader.go:213:
# 27: WHITESPACE (untyped int constant 4294977024) overflows int

COMMENT =	scan your project's dependencies for vulnerabilities

V =		1.8.4
MODGO_MODNAME =	github.com/google/osv-scanner
MODGO_VERSION =	v${V}

DISTNAME =	osv-scanner-${V}

CATEGORIES =	security

HOMEPAGE =	https://github.com/google/osv-scanner

# Apache-2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

WANTLIB += c pthread

.include "modules.inc"

.include <bsd.port.mk>
