# $OpenBSD: Makefile,v 1.12 2018/08/20 07:52:01 robert Exp $

COMMENT =		compact self-hosted Git service

VERSION =		1.5.0
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
	${SUBST_CMD} ${WRKDIST}/{custom/conf/app.ini.sample,main.go}

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/gitea ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/gitea
.for _d in custom/conf options public templates
	cp -Rp ${WRKSRC}/${_d} ${PREFIX}/share/gitea
.endfor

post-install:
	@find ${WRKINST} -type f -name '*.beforesubst' -exec rm {} \;
	@find ${WRKINST} -type f -name '*.orig' -exec rm {} \;

.include <bsd.port.mk>
