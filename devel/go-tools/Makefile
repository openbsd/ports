# $OpenBSD: Makefile,v 1.2 2015/06/11 20:02:53 czarkoff Exp $

COMMENT =		various tools for the Go programming language
GH_ACCOUNT =		golang
GH_PROJECT =		tools
GH_COMMIT =		27e692e6ec36d8f48be794f32553e1400c70dbf2
DISTNAME =		go-tools-1.4.20150206
REVISION =		0
CATEGORIES =		devel
HOMEPAGE =		http://golang.org/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MODULES =		lang/go

RUN_DEPENDS =		${MODGO_RUN_DEPENDS}

ALL_TARGET =		golang.org/x/tools/cmd/benchcmp \
			golang.org/x/tools/cmd/callgraph \
			golang.org/x/tools/cmd/cover \
			golang.org/x/tools/cmd/digraph \
			golang.org/x/tools/cmd/eg \
			golang.org/x/tools/cmd/fiximports \
			golang.org/x/tools/cmd/godoc \
			golang.org/x/tools/cmd/godex \
			golang.org/x/tools/cmd/goimports \
			golang.org/x/tools/cmd/gomvpkg \
			golang.org/x/tools/cmd/gorename \
			golang.org/x/tools/cmd/gotype \
			golang.org/x/tools/cmd/oracle \
			golang.org/x/tools/cmd/ssadump \
			golang.org/x/tools/cmd/stress \
			golang.org/x/tools/cmd/stringer \
			golang.org/x/tools/cmd/vet
#			golang.org/x/tools/cmd/html2article \
#			golang.org/x/tools/cmd/present \

MODGO_TYPE =		bin tool
MODGO_FLAGS =		-n

post-patch:
	mkdir -p ${MODGO_WORKSPACE}/src/golang.org/x
	mv ${WRKDIST} ${MODGO_WORKSPACE}/src/golang.org/x/tools

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODGO_TOOLS}
.for tool in vet cover
	${INSTALL_PROGRAM} ${WRKDIR}/${MODGO_TOOLS}/${tool} \
					${PREFIX}/${MODGO_TOOLS}/${tool}
.endfor

.include <bsd.port.mk>
