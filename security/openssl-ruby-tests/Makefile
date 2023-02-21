COMMENT =		sources of the Ruby OpenSSL gem for regression testing

# Follows HEAD
VERSION =		20230221
DISTNAME =		openssl-ruby-tests-${VERSION}

GH_ACCOUNT =		ruby
GH_PROJECT =		openssl
GH_COMMIT =		b5ef6d151a2639ccb91be83285eed1c7b9d2c965

CATEGORIES =		security devel

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

NO_BUILD =		Yes
NO_TEST =		Yes

OPENSSL_TESTS_DIR =	${PREFIX}/share/openssl-ruby-tests

do-install:
	${INSTALL_DATA_DIR} ${OPENSSL_TESTS_DIR}
	cd ${WRKSRC} && \
		pax -rw -s '/^.*${PATCHORIG}$$//' BSDL ext lib test ${OPENSSL_TESTS_DIR}

.include <bsd.port.mk>
