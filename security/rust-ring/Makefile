# If this port is changed, its consumers need to be bumped (static linking)
COMMENT =		ring crate source patched for x-only assembly

VERSION =		0.16.20
DISTNAME =		ring-${VERSION}
PKGNAME =		rust-${DISTNAME}
REVISION =		8

SUBST_VARS =		VERSION

SITES =			https://crates.io/api/v1/crates/

DISTFILES +=		cargo/${DISTNAME}.tar.gz{ring/${VERSION}/download}

CATEGORIES =		security

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# ISC, OpenSSL
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

RING_SOURCE_DIR =	${PREFIX}/share/ring-${VERSION}

do-install:
	${INSTALL_DATA_DIR} ${RING_SOURCE_DIR}
	cd ${WRKSRC} && \
		pax -rw -s '/^.*${PATCHORIG}$$//' . ${RING_SOURCE_DIR}

.include <bsd.port.mk>
