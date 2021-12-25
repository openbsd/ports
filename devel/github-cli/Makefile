# $OpenBSD: Makefile,v 1.8 2021/12/25 11:19:40 kn Exp $

COMMENT =		command-line access to github pull requests, issues and more

V =			2.4.0
MODGO_MODNAME =		github.com/cli/cli/v2
MODGO_VERSION =		v$V

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

do-test:
	cd ${WRKSRC} && ${MODGO_TEST_CMD} ./...

post-install:
	${WRKDIR}/go/bin/gen-docs --doc-path ${PREFIX}/man/man1 --man-page
	rm ${PREFIX}/bin/gen-docs

.include "modules.inc"

.include <bsd.port.mk>
