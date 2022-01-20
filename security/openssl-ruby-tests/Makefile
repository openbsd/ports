# $OpenBSD: Makefile,v 1.21 2022/01/20 00:42:44 tb Exp $

COMMENT =		sources of the Ruby OpenSSL gem for regression testing

# Follows HEAD
VERSION =		20220105
DISTNAME =		openssl-ruby-tests-${VERSION}
REVISION =		1

GH_ACCOUNT =		ruby
GH_PROJECT =		openssl
GH_COMMIT =		ee64d93cb20e7fca80eddbf711c56ae2fac9a825

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
