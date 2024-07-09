COMMENT =		fast and easy-to-use, open source logs solution

V =			0.27.1

DIST_TUPLE +=		github VictoriaMetrics VictoriaMetrics v${V}-victorialogs . # Apache License 2.0

PKGNAME =		victorialogs-${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://victoriametrics.com/products/victorialogs/

MAINTAINER =		Denis Fondras <denis@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

USE_GMAKE =		Yes

MODULES =		lang/go
MODGO_GOPATH =		${MODGO_WORKSPACE}
MODGO_GO111MODULE =	auto
SUBST_VARS =		LOCALSTATEDIR
NO_TEST =		Yes

MAKE_ENV +=		MAKE_CONCURRENCY=1
MAKE_ENV +=		BUILDINFO_TAG=tags-v${V} \
			PKG_TAG=tags-v${V}

ALL_TARGET =		github.com/VictoriaMetrics/VictoriaMetrics

do-build:
	cd ${WRKSRC} && GOOS=openbsd ${MAKE_ENV} ${MAKE_PROGRAM} victoria-logs-pure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/victoria-logs-pure ${PREFIX}/bin/victoria-logs

.include <bsd.port.mk>
