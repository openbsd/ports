COMMENT =		various tools for the Go programming language

MODGO_MODNAME =		golang.org/x/tools
MODGO_VERSION =		v0.13.0

DISTNAME =		go-tools-${MODGO_VERSION}
EPOCH =			0

CATEGORIES =		devel
HOMEPAGE =		https://pkg.go.dev/golang.org/x/tools

# 3-clause BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

RUN_DEPENDS =		${MODGO_RUN_DEPENDS}

# deprecated in favour of golang.org/x/perf/cmd/benchstat
_SUBPKGS =		benchcmp

_SUBPKGS +=		bisect \
			bundle \
			callgraph \
			compilebench \
			digraph \
			eg \
			file2fuzz \
			fiximports \
			go-contrib-init \
			godex \
			godoc \
			goimports \
			gomvpkg \
			gorename \
			gotype \
			goyacc \
			guru \
			html2article \
			present \
			ssadump \
			stress \
			stringer \
			toolstash

ALL_TARGET =		${_SUBPKGS:%=golang.org/x/tools/cmd/%}
WRKDIST =		${WRKSRC}

# default do-build set by go.port.mk would build everything under
# cmd/... regardless of ALL_TARGET.
do-build:
	cd ${WRKSRC} && ${MODGO_BUILD_TARGET}

.include "modules.inc"
.include <bsd.port.mk>
