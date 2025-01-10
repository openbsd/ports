COMMENT =		sources of the Ruby OpenSSL gem for regression testing

# Follows HEAD
VERSION =		20250106
DISTNAME =		openssl-ruby-tests-${VERSION}

GH_ACCOUNT =		ruby
GH_PROJECT =		openssl
GH_COMMIT =		b9ef9cc2bb4e00584e2c46b1861880fd79f1fa3f

CATEGORIES =		security devel

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

NO_BUILD =		Yes
NO_TEST =		Yes

RUN_DEPENDS =		devel/ruby-test-unit-ruby-core,${MODRUBY_FLAVOR}

OPENSSL_TESTS_DIR =	${PREFIX}/share/openssl-ruby-tests

do-install:
	${INSTALL_DATA_DIR} ${OPENSSL_TESTS_DIR}
	cd ${WRKSRC} && \
		pax -rw -s '/^.*${PATCHORIG}$$//' BSDL ext lib test ${OPENSSL_TESTS_DIR}

.include <bsd.port.mk>
