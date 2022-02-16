# $OpenBSD: Makefile,v 1.5 2022/02/16 12:43:45 abieber Exp $

BROKEN-sparc64 = ring-0.6.19 does not build on sparc64

COMMENT =	command line BitWarden client

DISTNAME =	rbw-1.4.3

CATEGORIES =	security

MASTER_SITES =	https://git.tozt.net/rbw/snapshot/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# MIT X11
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi crypto m pthread ssl

DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

.include "crates.inc"

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
