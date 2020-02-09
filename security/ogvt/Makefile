# $OpenBSD: Makefile,v 1.1.1.1 2020/02/09 01:45:05 abieber Exp $

COMMENT =		simple tool for verifying gpg signatures
VERSION =		v1.0.0
DISTNAME =		ogvt-${VERSION}
SIGFILES =		${DISTNAME}${EXTRACT_SUFX}.asc
PKGNAME =		${DISTNAME:S/-v/-/g}

CATEGORIES =		security

HOMEPAGE =		https://git.sr.ht/~qbit/ogvt

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://deftly.net/dist/
DISTFILES =		ogvt-{archive/}${VERSION}${EXTRACT_SUFX}

# uses pledge()
WANTLIB += c pthread

MODULES =	lang/go
MODGO_TYPE =	bin

ALL_TARGET =	git.sr.ht/~qbit/ogvt

.include <bsd.port.mk>
