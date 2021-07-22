# $OpenBSD: Makefile,v 1.11 2021/07/22 16:01:47 abieber Exp $

COMMENT =	global, versioned, peer-to-peer filesystem

MODGO_MODNAME =	github.com/ipfs/go-ipfs
MODGO_VERSION =	v0.9.1

DISTNAME =	go-ipfs-${MODGO_VERSION}

CATEGORIES =	net
HOMEPAGE =	https://ipfs.io

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>
# both MIT and Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread
MODULES =	lang/go
SUBST_VARS =	VARBASE

NO_TEST =	Yes

.include "./modules.inc"

.include <bsd.port.mk>
