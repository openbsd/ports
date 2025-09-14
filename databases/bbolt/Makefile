COMMENT =		embedded key/value database for Go

MODGO_MODNAME =		go.etcd.io/bbolt
MODGO_VERSION =		v1.4.3

DISTNAME =		bbolt-${MODGO_VERSION}
PKGNAME =		bbolt-1.4.3

CATEGORIES =		databases

HOMEPAGE =		https://go.etcd.io/bbolt

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

MODGO_MODULES =	\
	github.com/cpuguy83/go-md2man/v2	 v2.0.4 \
	github.com/davecgh/go-spew		 v1.1.1 \
	github.com/inconshreveable/mousetrap	 v1.1.0 \
	github.com/pmezard/go-difflib		 v1.0.0 \
	github.com/russross/blackfriday/v2	 v2.1.0 \
	github.com/spf13/cobra			 v1.8.1 \
	github.com/spf13/pflag			 v1.0.6 \
	github.com/stretchr/objx		 v0.5.2 \
	github.com/stretchr/testify		 v1.10.0 \
	go.etcd.io/gofail			 v0.2.0 \
	golang.org/x/sync			 v0.10.0 \
	golang.org/x/sys			 v0.29.0 \
	gopkg.in/check.v1			 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v3			 v3.0.1

MODGO_MODFILES =	\
	github.com/spf13/pflag		 v1.0.5 \
	github.com/stretchr/testify	 v1.9.0

.include <bsd.port.mk>
