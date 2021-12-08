# $OpenBSD: Makefile,v 1.1.1.1 2021/12/08 02:30:33 abieber Exp $

COMMENT =	Vultr Command Line Interface

MODGO_MODNAME =	github.com/vultr/vultr-cli/v2
MODGO_VERSION =	v2.11.1

DISTNAME =	vultr-cli-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://www.vultr.com/

MAINTAINER =	Adriano Barbosa <barbosa.aob@gmail.com>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

do-build:
	cd ${WRKSRC} && \
		rm -rf vendor && \
		${MODGO_BUILD_CMD}

.include "modules.inc"

.include <bsd.port.mk>
