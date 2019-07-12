# $OpenBSD: Makefile,v 1.9 2019/07/12 20:49:38 sthen Exp $

V =		5.4.0
COMMENT =	enhanced port of Thompson shell from Sixth Edition Unix
DISTNAME =	etsh-${V}
EPOCH =		0
CATEGORIES =	shells

HOMEPAGE =	https://etsh.nl/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =	https://etsh.nl/src/etsh_${V}/

CONFIGURE_STYLE =	simple

MAKE_FLAGS =	SYSCONFDIR="${SYSCONFDIR}"

INSTALL_TARGET =	install-etshall install-tshall install-exp
FAKE_FLAGS =	BINGRP="-g ${BINGRP}" MANGRP="-g ${MANGRP}" \
		BINMODE="-m ${BINMODE}" MANMODE="-m ${MANMODE}" \
		PREFIX="${PREFIX}"

TEST_TARGET =	check

SUBST_VARS +=	V

.include <bsd.port.mk>
