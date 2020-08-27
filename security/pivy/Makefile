# $OpenBSD: Makefile,v 1.3 2020/08/27 10:27:31 jmatthew Exp $

V =		0.7.1
COMMENT =	tools for using PIV tokens as an SSH agent, encryption, etc.
DISTNAME =	pivy-$V

HOMEPAGE =	https://github.com/arekinath/pivy

MASTER_SITES =	https://github.com/arekinath/pivy/releases/download/v$V/

CATEGORIES =	security

MAINTAINER =	Jonathan Matthew <jmatthew@openbsd.org>

# MPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c edit crypto pcsclite z

LIB_DEPENDS =		security/pcsc-lite
RUN_DEPENDS =		security/ccid

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FLAGS =		CC="${CC}" \
			COPTFLAGS="${CFLAGS}" \
			prefix=${PREFIX}

.include <bsd.port.mk>
