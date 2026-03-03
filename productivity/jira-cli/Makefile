COMMENT =		interactive Jira command line

V =			1.7.0
DISTNAME =		jira-cli-$V
MODGO_MODNAME =		github.com/ankitpokhrel/jira-cli
MODGO_VERSION =		v$V

SURVEY_V =		vv2.3.8
DIST_TUPLE =		github bsdmp survey ${SURVEY_V} ../survey
EXTRACT_ONLY =		bsdmp-survey-${SURVEY_V}.tar.gz

CATEGORIES =		productivity

HOMEPAGE =		https://github.com/ankitpokhrel/jira-cli

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go
MODGO_LDFLAGS =			\
 -X github.com/ankitpokhrel/jira-cli/internal/version.Version=${MODGO_VERSION} \
 -X github.com/ankitpokhrel/jira-cli/internal/version.GitCommit= \
 -s -w

NO_TEST =		Yes

post-patch:
	sed -i -e 's/man(7)/man(1)/' -e 's/Section: "7",/Section: "1",/' \
		${WRKSRC}/internal/cmd/man/man.go

pre-build:
	cd ${WRKSRC}; ${MODGO_CMD} mod edit -replace \
		github.com/AlecAivazis/survey/v2=${WRKDIR}/survey

post-install:
	env XDG_CONFIG_HOME='~' ${PREFIX}/bin/jira man -g -o ${PREFIX}/man/man1

.include "modules.inc"
.include <bsd.port.mk>
