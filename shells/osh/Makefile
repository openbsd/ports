# $OpenBSD: Makefile,v 1.9 2016/05/18 10:04:31 pascal Exp $

COMMENT =		Sixth Edition UNIX Shell

V =			4.2.1
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

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/osh
	${INSTALL_DATA} ${WRKSRC}/examples/OpenBSD/osh.login \
		${PREFIX}/share/examples/osh/osh.login
	${INSTALL_DATA} ${WRKSRC}/examples/OpenBSD/osh.logout \
		${PREFIX}/share/examples/osh/osh.logout
	${INSTALL_DATA} ${WRKSRC}/examples/OpenBSD/osh.oshrc \
		${PREFIX}/share/examples/osh/osh.oshrc

.include <bsd.port.mk>
