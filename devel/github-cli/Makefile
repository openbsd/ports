COMMENT =	command-line access to github pull requests, issues and more

V =		2.86.0
MODGO_MODNAME =	github.com/cli/cli/v${V:R:R}
MODGO_VERSION =	v${V}

DISTNAME =	cli-${MODGO_VERSION}
PKGNAME =	github-cli-${V}
REVISION =	0

# replace "survey" module with a patched version that uses ioctl
# instead of unnecessary direct syscall() calls
SURVEY_V =	vv2.3.8
DIST_TUPLE =	github bsdmp survey ${SURVEY_V} ../survey
EXTRACT_ONLY =	bsdmp-survey-${SURVEY_V}.tar.gz

CATEGORIES =	devel
HOMEPAGE =	https://cli.github.com/

MAINTAINER =	Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go
MODGO_LDFLAGS +=	-X "${MODGO_MODNAME}/internal/build.Version=$V"

TEST_TARGET =	./...

PORTHOME =	${WRKDIR}

pre-build:
	cd ${WRKSRC}; ${MODGO_CMD} mod edit -replace \
	    github.com/AlecAivazis/survey/v2=${WRKDIR}/survey

post-install:
	${WRKDIR}/go/bin/gen-docs --doc-path ${PREFIX}/man/man1 --man-page
	rm ${PREFIX}/bin/gen-docs

.include "modules.inc"
.include <bsd.port.mk>
