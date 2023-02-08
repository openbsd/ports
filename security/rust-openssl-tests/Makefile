COMMENT =		source of the rust-openssl crate for regression testing

# Follows HEAD
VERSION =		20230208
DISTNAME =		rust-openssl-tests-${VERSION}

GH_ACCOUNT =		sfackler
GH_PROJECT =		rust-openssl
GH_COMMIT =		26fc7974e0b1f620a2a3788e93c811202a29ba33

CATEGORIES =		security devel

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Various, mostly MIT/Apache2, see crates.inc for details
PERMIT_PACKAGE =	Yes

# Must be different from '.orig': .cargo-checksum.json contains Cargo.toml.orig
PATCHORIG =		.patch.orig

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
