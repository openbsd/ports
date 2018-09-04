# $OpenBSD: Makefile,v 1.19 2018/09/04 12:46:10 espie Exp $

COMMENT =		various tools for the Go programming language
GH_ACCOUNT =		golang
GH_PROJECT =		tools
GH_COMMIT = 		ce871d178848e3eea1e8795e5cfb74053dde4bb9
DISTNAME =		go-tools-1.10.20180216
CATEGORIES =		devel
HOMEPAGE =		https://godoc.org/golang.org/x/tools
REVISION =		2

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go
MODGO_ENV =		PATH="${PORTPATH}"
MODGO_TYPE =		bin lib

BUILD_DEPENDS =		net/go-net
RUN_DEPENDS =		${MODGO_RUN_DEPENDS}

GODOC_TARGET = 		golang.org/x/tools/cmd/godoc

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
			gorename \
			gotype \
			goyacc \
			guru \
			heapview \
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
