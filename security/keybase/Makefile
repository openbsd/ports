# $OpenBSD: Makefile,v 1.17 2019/06/19 21:07:05 juanfra Exp $

# go-ps only supports amd64 on OpenBSD
# ../vendor/github.com/keybase/go-ps/process.go:39: undefined: processes
# ../vendor/github.com/keybase/go-ps/process.go:47: undefined: findProcess
ONLY_FOR_ARCHS = amd64

COMMENT =	client for keybase.io

# XXX: https://github.com/keybase/client/issues/10800
V =		4.1.0
GH_ACCOUNT =	keybase
GH_PROJECT =	client
GH_TAGNAME =	v${V}

DISTNAME =	keybase-${V}

CATEGORIES =	security
HOMEPAGE =	https://keybase.io

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	security/gnupg2

WANTLIB += c pthread

WRKSRC =		${WRKDIR}/go/src/github.com/keybase/client

MODULES =		lang/go
MODGO_TYPE =		bin

NO_TEST =		Yes

do-build:
	cd ${WRKSRC}/go/keybase && ${MODGO_CMD} build -tags \
		production
	cd ${WRKSRC}/go/kbfs/kbfsgit/git-remote-keybase && \
		${MODGO_CMD} build -tags production

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/go/keybase/keybase ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/go/kbfs/kbfsgit/git-remote-keybase/git-remote-keybase ${PREFIX}/bin/

.include <bsd.port.mk>
