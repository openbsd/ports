# $OpenBSD: Makefile,v 1.3 2018/06/17 20:08:21 bcallah Exp $

V =		5.2.0
COMMENT =	enhanced port of Thompson shell from Sixth Edition Unix
DISTNAME =	etsh-${V}
EPOCH =		0
CATEGORIES =	shells

HOMEPAGE =	https://etsh.io/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =	https://etsh.io/src/

CONFIGURE_STYLE =	simple

MAKE_FLAGS =	SYSCONFDIR="${SYSCONFDIR}"

INSTALL_TARGET =	install-etshall install-tshall install-exp
FAKE_FLAGS =	BINGRP="-g ${BINGRP}" MANGRP="-g ${MANGRP}" \
		BINMODE="-m ${BINMODE}" MANMODE="-m ${MANMODE}" \
		PREFIX="${PREFIX}"

TEST_TARGET =	check

SUBST_VARS +=	V

.include <bsd.port.mk>
