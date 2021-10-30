# $OpenBSD: Makefile,v 1.5 2021/10/30 00:08:26 kn Exp $

COMMENT =		command-line access to github pull requests, issues and more

V =			2.2.0
MODGO_MODNAME =		github.com/cli/cli/v2
MODGO_VERSION =		v$V
REVISION =		0

DISTNAME =		cli-${MODGO_VERSION}
PKGNAME =		github-cli-$V

CATEGORIES =		devel
HOMEPAGE =		https://cli.github.com/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go
MODGO_LDFLAGS +=	-X "github.com/cli/cli/v${V:R:R}/internal/build.Version=$V"

SEPARATE_BUILD =	Yes

TEST_ENV =		WORK=${WRKDIR}

do-test:
	cd ${WRKSRC} && ${MODGO_TEST_CMD} ./...

post-install:
	${WRKDIR}/go/bin/gen-docs --doc-path ${PREFIX}/man/man1 --man-page
	rm ${PREFIX}/bin/gen-docs

.include "modules.inc"

.include <bsd.port.mk>
