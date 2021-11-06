# $OpenBSD: Makefile,v 1.19 2021/11/06 10:38:41 ajacoutot Exp $

# try removing with next update
BROKEN-aarch64= 	looks like the vendored golang.org/x/sys/unix is too old for aarch64

COMMENT=		decentralized service discovery and orchestration

MODGO_MODNAME=		github.com/hashicorp/serf
MODGO_VERSION=		v0.9.5
DISTNAME=		hashicorp-serf-${MODGO_VERSION:S/v//}
REVISION=		1

CATEGORIES=		sysutils net

HOMEPAGE=		https://www.serfdom.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>
# MPLv2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c pthread

MODULES=		lang/go

MODGO_MODULES =	\
	github.com/armon/circbuf		 v0.0.0-20150827004946-bbbad097214e \
	github.com/armon/go-metrics		 v0.0.0-20180917152333-f0300d1749da \
	github.com/armon/go-radix		 v1.0.0 \
	github.com/bgentry/speakeasy		 v0.1.0 \
	github.com/davecgh/go-spew		 v1.1.1 \
	github.com/fatih/color			 v1.9.0 \
	github.com/google/btree			 v0.0.0-20180813153112-4030bb1f1f0c \
	github.com/hashicorp/errwrap		 v1.0.0 \
	github.com/hashicorp/go-immutable-radix	 v1.0.0 \
	github.com/hashicorp/go-msgpack		 v0.5.3 \
	github.com/hashicorp/go-multierror	 v1.1.0 \
	github.com/hashicorp/go-sockaddr	 v1.0.0 \
	github.com/hashicorp/go-syslog		 v1.0.0 \
	github.com/hashicorp/go-uuid		 v1.0.1 \
	github.com/hashicorp/golang-lru		 v0.5.0 \
	github.com/hashicorp/logutils		 v1.0.0 \
	github.com/hashicorp/mdns		 v1.0.1 \
	github.com/hashicorp/memberlist		 v0.2.2 \
	github.com/mattn/go-colorable		 v0.1.6 \
	github.com/mattn/go-isatty		 v0.0.12 \
	github.com/miekg/dns			 v1.1.26 \
	github.com/mitchellh/cli		 v1.1.0 \
	github.com/mitchellh/mapstructure	 v0.0.0-20160808181253-ca63d7c062ee \
	github.com/pascaldekloe/goe		 v0.0.0-20180627143212-57f6aae5913c \
	github.com/pmezard/go-difflib		 v1.0.0 \
	github.com/posener/complete		 v1.2.3 \
	github.com/ryanuber/columnize		 v0.0.0-20160712163229-9b3edd62028f \
	github.com/sean-/seed			 v0.0.0-20170313163322-e2103e2c3529 \
	github.com/stretchr/objx		 v0.1.0 \
	github.com/stretchr/testify		 v1.4.0 \
	golang.org/x/crypto			 v0.0.0-20190923035154-9ee001bba392 \
	golang.org/x/net			 v0.0.0-20190923162816-aa69164e4478 \
	golang.org/x/sync			 v0.0.0-20190423024810-112230192c58 \
	golang.org/x/sys			 v0.0.0-20200223170610-d5e6a3e2c0ae \
	golang.org/x/text			 v0.3.2 \
	golang.org/x/tools			 v0.0.0-20190907020128-2ca718005c18 \
	golang.org/x/xerrors			 v0.0.0-20190717185122-a985d3407aa7 \
	gopkg.in/check.v1			 v0.0.0-20161208181325-20d25e280405 \
	gopkg.in/yaml.v2			 v2.2.2
MODGO_MODFILES =	\
	github.com/armon/go-radix		 v0.0.0-20180808171621-7fddfc383310 \
	github.com/davecgh/go-spew		 v1.1.0 \
	github.com/fatih/color			 v1.7.0 \
	github.com/hashicorp/go-multierror	 v1.0.0 \
	github.com/hashicorp/go-uuid		 v1.0.0 \
	github.com/mattn/go-colorable		 v0.0.9 \
	github.com/mattn/go-colorable		 v0.1.4 \
	github.com/mattn/go-isatty		 v0.0.11 \
	github.com/mattn/go-isatty		 v0.0.3 \
	github.com/mattn/go-isatty		 v0.0.8 \
	github.com/miekg/dns			 v1.0.14 \
	github.com/posener/complete		 v1.1.1 \
	github.com/stretchr/testify		 v1.2.2 \
	golang.org/x/crypto			 v0.0.0-20181029021203-45a5f77698d3 \
	golang.org/x/crypto			 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/net			 v0.0.0-20181023162649-9b4f9f5ad519 \
	golang.org/x/net			 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net			 v0.0.0-20190620200207-3b0461eec859 \
	golang.org/x/sync			 v0.0.0-20181221193216-37e7f081c4d4 \
	golang.org/x/sys			 v0.0.0-20180823144017-11551d06cbcc \
	golang.org/x/sys			 v0.0.0-20181026203630-95b1ffbd15a5 \
	golang.org/x/sys			 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys			 v0.0.0-20190222072716-a9d3bda3a223 \
	golang.org/x/sys			 v0.0.0-20190922100055-0a153f010e69 \
	golang.org/x/sys			 v0.0.0-20190924154521-2837fb4f24fe \
	golang.org/x/sys			 v0.0.0-20191026070338-33540a1f6037 \
	golang.org/x/sys			 v0.0.0-20200116001909-b77594299b42 \
	golang.org/x/text			 v0.3.0 \
	golang.org/x/tools			 v0.0.0-20180917221912-90fa682c2a6e

.include <bsd.port.mk>
