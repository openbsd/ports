# $OpenBSD: Makefile,v 1.8 2018/01/17 21:05:38 landry Exp $

COMMENT =		compact self-hosted Git service

VERSION =		1.3.2
GH_ACCOUNT =		go-gitea
GH_PROJECT =		gitea
GH_TAGNAME =		v${VERSION}

CATEGORIES =		www devel

HOMEPAGE =		https://gitea.io/

MAINTAINER =		Robert Nagy <robert@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

MODGO_ENV =		PATH="${PORTPATH}" CFLAGS="${CFLAGS}"
MODGO_FLAGS +=		-tags "sqlite cert"

RUN_DEPENDS =		devel/git \
			shells/bash

ALL_TARGET =		code.gitea.io/${GH_PROJECT}
WRKSRC =		${MODGO_WORKSPACE}/src/${ALL_TARGET}

SUBST_VARS +=		VERSION

pre-configure:
	${SUBST_CMD} ${WRKDIST}/{conf/app.ini,main.go}

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/gitea ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/gitea
.for _d in conf options public templates
	cp -Rp ${WRKSRC}/${_d} ${PREFIX}/share/gitea
.endfor

.include <bsd.port.mk>
