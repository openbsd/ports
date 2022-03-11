COMMENT =		CI/CD job runner for GitLab

V =			v14.2.0
DISTNAME =		gitlab-runner-${V}
PKGNAME =		${DISTNAME:S/v//}

CATEGORIES =		sysutils

HOMEPAGE =		https://gitlab.com/gitlab-org/gitlab-runner

# Apache 2
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MASTER_SITES =		https://gitlab.com/gitlab-org/gitlab-runner/-/archive/${V}/

MODULES =		lang/go

ALL_TARGET =		gitlab.com/gitlab-org/gitlab-runner

# Taken from Makefile
MODGO_LDFLAGS +=	-X ${ALL_TARGET}/common.NAME=gitlab-runner
MODGO_LDFLAGS +=	-X ${ALL_TARGET}/common.VERSION=${V:S/v//}
MODGO_LDFLAGS +=	-X ${ALL_TARGET}/common.REVISION=""
MODGO_LDFLAGS +=	-X ${ALL_TARGET}/common.BRANCH=""
MODGO_LDFLAGS +=	-s -w

do-install:
	${MODGO_INSTALL_TARGET}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gitlab-runner
	@cp -r ${WRKSRC}/docs/* ${PREFIX}/share/doc/gitlab-runner/

.include <bsd.port.mk>
