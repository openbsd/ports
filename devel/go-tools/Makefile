# $OpenBSD: Makefile,v 1.24 2019/07/12 20:44:10 sthen Exp $

COMMENT =		various tools for the Go programming language
GH_ACCOUNT =		golang
GH_PROJECT =		tools
GH_COMMIT =		f727befe758c04ce68d52abc6e69ad111e2c6797
DISTNAME =		go-tools-1.12.20190226
CATEGORIES =		devel
HOMEPAGE =		https://godoc.org/golang.org/x/tools
REVISION =		0

# 3-clause BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go
MODGO_TYPE =		bin

BUILD_DEPENDS =		net/go-net
RUN_DEPENDS =		${MODGO_RUN_DEPENDS}

GODOC_TARGET =		golang.org/x/tools/cmd/godoc

_MAIN =			golang.org/x/tools
_SUBPKGS =		benchcmp \
			bundle \
			callgraph \
			compilebench \
			digraph \
			eg \
			fiximports \
			go-contrib-init \
			godex \
			goimports \
			gomvpkg \
			gopls \
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

ALL_TARGET =		${_SUBPKGS:%=${_MAIN}/cmd/%}
WRKSRC =		${MODGO_WORKSPACE}/src/${_MAIN}

post-extract:
	mkdir -p ${MODGO_WORKSPACE}/pkg

# godoc needs special handling - prior to Go 1.2, godoc was part of the base
# distribution and there is a remaining mapping that causes 'go install' to
# install godoc in $GOROOT/bin instead of $GOPATH/bin (golang.org/issue/6654).
do-build:
	${MODGO_BUILD_TARGET}
	${MODGO_CMD} build ${MODGO_FLAGS} -o ${MODGO_WORKSPACE}/bin/godoc \
		${GODOC_TARGET}

.include <bsd.port.mk>
