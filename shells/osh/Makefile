# $OpenBSD: Makefile,v 1.10 2017/01/28 21:54:34 pascal Exp $

COMMENT =		Sixth Edition UNIX Shell

V =			4.3.0
DISTNAME =		osh-$V
EPOCH =			0

SUBST_VARS +=		V

CATEGORIES =		shells

HOMEPAGE =		http://v6shell.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}/src/

MAKE_FLAGS =		SYSCONFDIR="${SYSCONFDIR}" PREFIX="${TRUEPREFIX}" \
			BINGRP="-g ${BINGRP}" MANGRP="-g ${MANGRP}" \
			BINMODE="-m ${BINMODE}" MANMODE="-m ${MANMODE}" \
			MANDIR="${PREFIX}/man/man1"

TEST_TARGET =		check

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/osh
	${INSTALL_DATA} ${WRKSRC}/examples/etc.osh.login \
		${PREFIX}/share/examples/osh/osh.login
	${INSTALL_DATA} ${WRKSRC}/examples/etc.osh.logout \
		${PREFIX}/share/examples/osh/osh.logout
	${INSTALL_DATA} ${WRKSRC}/examples/etc.osh.oshrc \
		${PREFIX}/share/examples/osh/osh.oshrc

.include <bsd.port.mk>
