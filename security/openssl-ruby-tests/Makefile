# $OpenBSD: Makefile,v 1.23 2022/02/05 18:37:14 tb Exp $

COMMENT =		sources of the Ruby OpenSSL gem for regression testing

# Follows HEAD
VERSION =		20220201
DISTNAME =		openssl-ruby-tests-${VERSION}
REVISION =		0

GH_ACCOUNT =		ruby
GH_PROJECT =		openssl
GH_COMMIT =		ac1ecccf59476db49c0258c8c595f4e1b2c7ea6d

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
		pax -rw -s '/^.*\.orig$$//' BSDL ext lib test ${OPENSSL_TESTS_DIR}

.include <bsd.port.mk>
