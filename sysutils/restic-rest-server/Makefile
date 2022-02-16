# $OpenBSD: Makefile,v 1.11 2022/02/16 12:46:06 abieber Exp $

COMMENT =	REST backend for the restic backup tool

MODGO_MODNAME =	github.com/restic/rest-server
MODGO_VERSION =	v0.11.0

DISTNAME =	rest-server-${MODGO_VERSION}
PKGNAME =	restic-${DISTNAME:S/-v/-/}

CATEGORIES =	sysutils

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>
# BSD
PERMIT_PACKAGE =	Yes

SUBST_VARS +=		VARBASE

MODULES =		lang/go

do-install:
	cp ${MODGO_WORKSPACE}/bin/rest-server ${PREFIX}/bin/restic-rest-server

.include "modules.inc"

.include <bsd.port.mk>
