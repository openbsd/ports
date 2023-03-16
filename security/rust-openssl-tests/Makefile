COMMENT =		source of the rust-openssl crate for regression testing

# Follows HEAD
VERSION =		20230316
DISTNAME =		rust-openssl-tests-${VERSION}

GH_ACCOUNT =		sfackler
GH_PROJECT =		rust-openssl
GH_COMMIT =		9ea51ec9cb277e8cd70549e6c3fca66d479c0bab

CATEGORIES =		security devel

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Various, mostly MIT/Apache2, see crates.inc for details
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo

NO_BUILD =		Yes
NO_TEST =		Yes

OPENSSL_TESTS_DIR =	${PREFIX}/share/rust-openssl-tests

do-install:
	${INSTALL_DATA_DIR} ${OPENSSL_TESTS_DIR}
	cd ${WRKSRC} && \
		pax -rw -s '/^.*${PATCHORIG}$$//' -s '/.*\.cargo\.ok//' \
		-s '/.*\.cargo_vcs_info\.json//' . ${OPENSSL_TESTS_DIR}

.include "crates.inc"

.include <bsd.port.mk>
