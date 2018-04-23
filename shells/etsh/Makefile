# $OpenBSD: Makefile,v 1.1.1.1 2018/04/23 21:54:48 bcallah Exp $

V =		5.1.0
COMMENT =	enhanced Thompson shell from Sixth Edition Unix
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
