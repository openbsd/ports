# $OpenBSD: Makefile,v 1.7 2016/05/08 17:14:07 czarkoff Exp $

COMMENT =		various tools for the Go programming language
GH_ACCOUNT =		golang
GH_PROJECT =		tools
GH_COMMIT = 		99c318c742339e824d89d23ba3b3bff4f4ab27a8
DISTNAME =		go-tools-1.5.20151226
CATEGORIES =		devel
HOMEPAGE =		http://golang.org/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go
MODGO_ENV =		PATH="${PORTPATH}"

RUN_DEPENDS =		${MODGO_RUN_DEPENDS}

GODOC_TARGET = 		golang.org/x/tools/cmd/godoc

ALL_TARGET =		golang.org/x/tools/cmd/benchcmp \
			golang.org/x/tools/cmd/callgraph \
			golang.org/x/tools/cmd/digraph \
			golang.org/x/tools/cmd/eg \
			golang.org/x/tools/cmd/fiximports \
			golang.org/x/tools/cmd/godex \
			golang.org/x/tools/cmd/goimports \
			golang.org/x/tools/cmd/gomvpkg \
			golang.org/x/tools/cmd/gorename \
			golang.org/x/tools/cmd/gotype \
			golang.org/x/tools/cmd/oracle \
			golang.org/x/tools/cmd/ssadump \
			golang.org/x/tools/cmd/stress \
			golang.org/x/tools/cmd/stringer \
#			golang.org/x/tools/cmd/html2article \
#			golang.org/x/tools/cmd/present \

MODGO_TYPE =		bin

post-patch:
	mkdir -p ${MODGO_WORKSPACE}/src/golang.org/x
	mv ${WRKDIST} ${MODGO_WORKSPACE}/src/golang.org/x/tools

# godoc needs special handling - prior to Go 1.2, godoc was part of the base
# distribution and there is a remaining mapping that causes 'go install' to
# install godoc in $GOROOT/bin instead of $GOPATH/bin (golang.org/issue/6654).
do-build:
	mkdir -p ${MODGO_WORKSPACE}/bin
	${MODGO_CMD} build ${MODGO_FLAGS} -o ${MODGO_WORKSPACE}/bin/godoc ${GODOC_TARGET}
	${MODGO_BUILD_TARGET}

.include <bsd.port.mk>
