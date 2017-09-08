# $OpenBSD: Makefile,v 1.14 2017/09/08 17:25:18 jsing Exp $

COMMENT =		various tools for the Go programming language
GH_ACCOUNT =		golang
GH_PROJECT =		tools
GH_COMMIT = 		1807494da808122833b9bd8e3e5fa179ef237d41
DISTNAME =		go-tools-1.9.20170824
CATEGORIES =		devel
HOMEPAGE =		https://godoc.org/golang.org/x/tools

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go
MODGO_ENV =		PATH="${PORTPATH}"

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
			guru/serial \
			heapview \
			html2article \
			present \
			ssadump \
			stress \
			stringer \
			toolstash
ALL_TARGET =		${_SUBPKGS:%=${_MAIN}/cmd/%}
WRKSRC =		${MODGO_WORKSPACE}/src/${_MAIN}

# godoc needs special handling - prior to Go 1.2, godoc was part of the base
# distribution and there is a remaining mapping that causes 'go install' to
# install godoc in $GOROOT/bin instead of $GOPATH/bin (golang.org/issue/6654).
do-build:
	${MODGO_BUILD_TARGET}
	${MODGO_CMD} build ${MODGO_FLAGS} -o ${MODGO_WORKSPACE}/bin/godoc \
		${GODOC_TARGET}

.include <bsd.port.mk>
