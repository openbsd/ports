# $OpenBSD: Makefile,v 1.7 2016/05/07 12:40:58 pascal Exp $

COMMENT =		Sixth Edition UNIX Shell

V =			20160108
DISTNAME =		osh-$V
REVISION =		0

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
	${INSTALL_DATA} ${WRKSRC}/examples/etc.osh.login \
		${PREFIX}/share/examples/osh.login
	${INSTALL_DATA} ${WRKSRC}/examples/etc.osh.logout \
		${PREFIX}/share/examples/osh.logout
	${INSTALL_DATA} ${WRKSRC}/examples/etc.osh.oshrc \
		${PREFIX}/share/examples/osh.oshrc

.include <bsd.port.mk>
