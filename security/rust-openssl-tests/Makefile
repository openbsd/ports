COMMENT =		source of the rust-openssl crate for regression testing

# Follows HEAD
VERSION =		20260202
DISTNAME =		rust-openssl-tests-${VERSION}

GH_ACCOUNT =		rust-openssl
GH_PROJECT =		rust-openssl
GH_COMMIT =		d927c2c25663becfd6557a3969a88fc5f8070a39

CATEGORIES =		security devel

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Various, mostly MIT/Apache2, see crates.inc for details
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo

MODRUST_BUILDDEP =	No
NO_BUILD =		Yes
NO_TEST =		Yes

OPENSSL_TESTS_DIR =	${PREFIX}/share/rust-openssl-tests

do-install:
	${INSTALL_DATA_DIR} ${OPENSSL_TESTS_DIR}
	cd ${WRKSRC} && \
		pax -rw -s '/^.*${PATCHORIG}$$//' -s '/.*\.cargo\.ok//' \
		-s '/.*\.cargo_vcs_info\.json//' . ${OPENSSL_TESTS_DIR}

.include "crates.inc"

.for _n _v in ${MODCARGO_CRATES}
VER_${_n} =	${_n}-${_v}
SUBST_VARS +=	VER_${_n}
.endfor

.include <bsd.port.mk>
