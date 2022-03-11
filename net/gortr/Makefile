COMMENT =		a RPKI-to-Router server

MODGO_MODNAME=		github.com/cloudflare/gortr
MODGO_VERSION=		v0.14.7

DISTNAME=		gortr-${MODGO_VERSION}
REVISION=		0

BROKEN-aarch64=		pins old version of golang.org/x/sys/unix

CATEGORIES =		net

HOMEPAGE =		https://github.com/cloudflare/gortr

MAINTAINER =		Claudio Jeker <claudio@openbsd.org>
# BSD 3-Clause
PERMIT_PACKAGE =	Yes

WANTLIB=		c pthread

MODULES=		lang/go

MODGO_MODULES =	\
	github.com/beorn7/perks					 v0.0.0-20180321164747-3a771d992973 \
	github.com/davecgh/go-spew				 v1.1.1 \
	github.com/golang/protobuf				 v1.2.0 \
	github.com/konsorten/go-windows-terminal-sequences	 v1.0.1 \
	github.com/matttproud/golang_protobuf_extensions	 v1.0.1 \
	github.com/pmezard/go-difflib				 v1.0.0 \
	github.com/prometheus/client_golang			 v0.9.2 \
	github.com/prometheus/client_model			 v0.0.0-20180712105110-5c3871d89910 \
	github.com/prometheus/common				 v0.0.0-20181126121408-4724e9255275 \
	github.com/prometheus/procfs				 v0.0.0-20181204211112-1dc9a6cbc91a \
	github.com/sirupsen/logrus				 v1.4.0 \
	github.com/stretchr/objx				 v0.1.1 \
	github.com/stretchr/testify				 v1.2.2 \
	golang.org/x/crypto					 v0.0.0-20180904163835-0709b304e793 \
	golang.org/x/net					 v0.0.0-20181201002055-351d144fa1fc \
	golang.org/x/sync					 v0.0.0-20181108010431-42b317875d0f \
	golang.org/x/sys					 v0.0.0-20180905080454-ebe1bf3edb33

.include <bsd.port.mk>
