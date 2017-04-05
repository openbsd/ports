# $OpenBSD: Makefile,v 1.2 2017/04/05 00:57:47 danj Exp $

COMMENT =		compact self-hosted Git service

GH_ACCOUNT =		go-gitea
GH_PROJECT =		gitea
GH_TAGNAME =		v1.1.0

CATEGORIES =		www devel

HOMEPAGE =		https://gitea.io/

MAINTAINER =		Robert Nagy <robert@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/git \
			shells/bash

WANTLIB += c pthread

MODULES =		lang/go

MODGO_ENV =		PATH="${PORTPATH}" CFLAGS="${CFLAGS}"
MODGO_FLAGS +=		-tags "sqlite cert"

ALL_TARGET ?=		code.gitea.io/${GH_PROJECT}
WRKSRC ?=		${MODGO_WORKSPACE}/src/${ALL_TARGET}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/conf/app.ini

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/gitea ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/gitea
.for _d in conf options public templates
	cp -Rp ${WRKSRC}/${_d} ${PREFIX}/share/gitea
.endfor

.include <bsd.port.mk>
