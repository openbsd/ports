# $OpenBSD: Makefile,v 1.71 2022/03/01 22:35:26 pvk Exp $

COMMENT =		compact self-hosted Git service

VERSION =		1.16.2
DISTNAME =		gitea-src-${VERSION}
PKGNAME =		gitea-${VERSION}

MASTER_SITES =		https://github.com/go-gitea/gitea/releases/download/v${VERSION}/

CATEGORIES =		www devel

HOMEPAGE =		https://gitea.io/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>
# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

GO_TAGS =		sqlite sqlite_unlock_notify
MODGO_FLAGS +=		-tags "${GO_TAGS}"
MODGO_LDFLAGS += -X code.gitea.io/gitea/modules/setting.AppWorkPath=${PREFIX}/share/gitea
MODGO_LDFLAGS += -X code.gitea.io/gitea/modules/setting.CustomConf=${SYSCONFDIR}/gitea/app.ini
MODGO_LDFLAGS += -X code.gitea.io/gitea/modules/setting.CustomPath=${LOCALSTATEDIR}/gitea/custom
MODGO_LDFLAGS += -X code.gitea.io/gitea/modules/setting.StaticRootPath=${PREFIX}/share/gitea
MODGO_LDFLAGS += -X main.Version=${VERSION}
MODGO_LDFLAGS += -X 'main.Tags=${GO_TAGS}'

RUN_DEPENDS =		devel/git

ALL_TARGET =		code.gitea.io/gitea
WRKSRC =		${MODGO_WORKSPACE}/src/${ALL_TARGET}

do-extract:
	@mkdir ${WRKDIST}
	@tar xzf ${FULLDISTDIR}/${DISTFILES} -C ${WRKDIST}

pre-configure:
	${SUBST_CMD} ${WRKDIST}/custom/conf/app.example.ini

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
