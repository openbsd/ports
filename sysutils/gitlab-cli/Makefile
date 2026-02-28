COMMENT =		GitLab CLI tool

V =			1.85.0
MODGO_MODNAME =		gitlab.com/gitlab-org/cli
MODGO_VERSION =		v${V}

DISTNAME =		cli-${MODGO_VERSION}
PKGNAME =		gitlab-cli-${V}
REVISION =		0

SURVEY_V =		vv2.3.8
DIST_TUPLE =		github bsdmp survey ${SURVEY_V} ../survey
EXTRACT_ONLY =		bsdmp-survey-${SURVEY_V}.tar.gz

CATEGORIES =		sysutils
HOMEPAGE =		https://docs.gitlab.com/ee/integration/glab/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES =		lang/go
BUILD_DEPENDS =		lang/go>=1.24.2
MODGO_LDFLAGS =		-X main.version=${V}

TEST_TARGET =		./...

pre-build:
	cd ${WRKSRC}; ${MODGO_CMD} mod edit -replace \
	    github.com/AlecAivazis/survey/v2=${WRKDIR}/survey

post-install:
	${WRKDIR}/go/bin/gen-docs --path ${PREFIX}/man/man1 --manpage
	rm ${PREFIX}/bin/gen-docs

.include "modules.inc"
.include <bsd.port.mk>
