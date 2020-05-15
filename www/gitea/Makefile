# $OpenBSD: Makefile,v 1.36 2020/05/15 08:13:10 pvk Exp $

COMMENT =		compact self-hosted Git service

VERSION =		1.11.5
GH_ACCOUNT =		go-gitea
GH_PROJECT =		gitea
GH_TAGNAME =		v${VERSION}

MASTER_SITES =		https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/releases/download/${GH_TAGNAME}/

DISTFILES =		${GH_PROJECT}-src-${VERSION}${EXTRACT_SUFX}

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

do-extract:
	@mkdir ${WRKDIST}
	@tar xzf ${FULLDISTDIR}/${DISTFILES} -C ${WRKDIST}

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
