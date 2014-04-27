# $OpenBSD: Makefile,v 1.4 2014/04/27 06:35:08 benoit Exp $

COMMENT =		Sixth Edition UNIX Shell

DISTNAME =		osh-20140410

CATEGORIES =		shells

HOMEPAGE =		http://v6shell.org

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}/src/

MAKE_FLAGS =		SYSCONFDIR="${SYSCONFDIR}" PREFIX="${TRUEPREFIX}"

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
