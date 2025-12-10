# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		Rust components used in mitmproxy

MODPY_DISTV =		0.12.8
DISTNAME =		mitmproxy_rs-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://mitmproxy.org/

MAINTAINER=		Kirill A. Korinsky <kirill@korins.ky>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} m pthread

DIST_TUPLE +=		github cloudflare boringtun 2f3c85f5c4a601018c10b464b1ca890d9504bf6e boringtun

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

WRKSRC =		${WRKDIST}/mitmproxy-rs
MODCARGO_CARGOLOCK =	${WRKDIST}/Cargo.lock

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/../pyproject.toml

.include "crates.inc"

.include <bsd.port.mk>
