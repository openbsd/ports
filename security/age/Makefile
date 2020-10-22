# $OpenBSD: Makefile,v 1.4 2020/10/22 12:07:42 abieber Exp $

COMMENT =	simple, modern and secure file encryption tool

MODGO_MODNAME =	filippo.io/age
MODGO_VERSION =	v1.0.0-beta5

DISTNAME =	age-${MODGO_VERSION}
PKGNAME =	${DISTNAME:S/-beta/beta/:S/-v/-/}

CATEGORIES =	security

HOMEPAGE =	https://age-encryption.org/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go
NO_TEST =	Yes

MODGO_MODFILES =	\
	github.com/davecgh/go-spew	 v1.1.0 \
	golang.org/x/crypto		 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/sys		 v0.0.0-20190215142949-d0b11bdaac8a \
	gopkg.in/check.v1		 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v2		 v2.2.2
MODGO_MODULES =	\
	github.com/davecgh/go-spew	 v1.1.1 \
	github.com/kr/pretty		 v0.1.0 \
	github.com/kr/pty		 v1.1.1 \
	github.com/kr/text		 v0.1.0 \
	github.com/pmezard/go-difflib	 v1.0.0 \
	github.com/sergi/go-diff	 v1.1.0 \
	github.com/stretchr/objx	 v0.1.0 \
	github.com/stretchr/testify	 v1.4.0 \
	golang.org/x/crypto		 v0.0.0-20200323165209-0ec3e9974c59 \
	golang.org/x/net		 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/sys		 v0.0.0-20190412213103-97732733099d \
	golang.org/x/text		 v0.3.0 \
	gopkg.in/check.v1		 v1.0.0-20190902080502-41f04d3bba15 \
	gopkg.in/yaml.v2		 v2.2.4

.include <bsd.port.mk>
