# $OpenBSD: Makefile,v 1.11 2018/07/10 12:45:44 abieber Exp $

# go-ps only supports amd64 on OpenBSD
# ../vendor/github.com/keybase/go-ps/process.go:39: undefined: processes
# ../vendor/github.com/keybase/go-ps/process.go:47: undefined: findProcess
ONLY_FOR_ARCHS = amd64

COMMENT =	client for keybase.io

# XXX: https://github.com/keybase/client/issues/10800
V =		2.1.0
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
MODGO_ENV =		PATH="${PORTPATH}" HOME="${PORTHOME}"

NO_TEST =		Yes

do-build:
	cd ${WRKSRC}/go/keybase && ${MODGO_CMD} build -tags \
		production

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/go/keybase/keybase ${PREFIX}/bin/

.include <bsd.port.mk>
