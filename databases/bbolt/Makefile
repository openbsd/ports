COMMENT =		embedded key/value database for Go

MODGO_MODNAME =		go.etcd.io/bbolt
MODGO_VERSION =		v1.3.7

DISTNAME =		bbolt-${MODGO_VERSION}
PKGNAME =		bbolt-1.3.7

CATEGORIES =		databases

HOMEPAGE =		https://go.etcd.io/bbolt

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

MODGO_MODULES =	\
	github.com/davecgh/go-spew	 v1.1.1 \
	github.com/pmezard/go-difflib	 v1.0.0 \
	github.com/stretchr/objx	 v0.5.0 \
	github.com/stretchr/testify	 v1.8.1 \
	go.etcd.io/gofail		 v0.1.0 \
	golang.org/x/sys		 v0.4.0 \
	gopkg.in/check.v1		 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v3		 v3.0.1
MODGO_MODFILES =	\
	github.com/davecgh/go-spew	 v1.1.0 \
	github.com/stretchr/objx	 v0.1.0 \
	github.com/stretchr/objx	 v0.4.0 \
	github.com/stretchr/testify	 v1.7.1 \
	github.com/stretchr/testify	 v1.8.0 \
	gopkg.in/yaml.v3		 v3.0.0-20200313102051-9f266ea9e77c

.include <bsd.port.mk>
