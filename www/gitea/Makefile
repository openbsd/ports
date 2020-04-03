# $OpenBSD: Makefile,v 1.34 2020/04/03 09:26:28 pvk Exp $

COMMENT =		compact self-hosted Git service

VERSION =		1.11.4
GH_ACCOUNT =		go-gitea
GH_PROJECT =		gitea
GH_TAGNAME =		v${VERSION}

MASTER_SITES0 =		https://distfiles.tristero.se/

DISTFILES =		${GH_PROJECT}-${VERSION}${EXTRACT_SUFX} \
			${GH_PROJECT}-${VERSION}-public${EXTRACT_SUFX}:0

CATEGORIES =		www devel

HOMEPAGE =		https://gitea.io/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

MODGO_FLAGS +=		-tags "sqlite cert"

RUN_DEPENDS =		devel/git

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
	@find ${WRKINST} -type f \
		\( -name '*.beforesubst' -o -name '*.orig' \) -delete

.include <bsd.port.mk>
