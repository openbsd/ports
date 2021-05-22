# $OpenBSD: Makefile,v 1.1.1.1 2021/05/22 17:57:33 paco Exp $

COMMENT =		command-line interface for Hetzner Cloud
V =			1.22.1

MODGO_MODNAME =		github.com/hetznercloud/cli
MODGO_VERSION =		v${V}

DISTNAME =		hcloud-${MODGO_VERSION}
PKGNAME =		hcloud-${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/hetznercloud/cli

MAINTAINER =		Stefan Hagen <sh+ports@codevoid.de>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

WANTLIB +=		c pthread

# no required module provides package github.com/hetznercloud/cli; to add it:
#      go get github.com/hetznercloud/cli
NO_TEST =		yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hcloud
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/hcloud
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hcloud
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/hcloud/README.md

.include "./modules.inc"

.include <bsd.port.mk>
