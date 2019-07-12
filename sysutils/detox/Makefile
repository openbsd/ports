# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:41 sthen Exp $

COMMENT =		utility designed to clean up filenames

DISTNAME =		detox-1.2.0

CATEGORIES =		sysutils

HOMEPAGE =		http://detox.sourceforge.net/

#BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=detox/}

EXTRACT_SUFX =		.tar.bz2

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/detox
	${INSTALL_DATA_DIR} ${PREFIX}/share/detox
	${INSTALL_PROGRAM} ${WRKBUILD}/detox ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/inline-detox ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/detox.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/detoxrc.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKBUILD}/detox.tbl.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKBUILD}/detoxrc ${PREFIX}/share/examples/detox
	${INSTALL_DATA} ${WRKBUILD}/iso8859_1.tbl ${PREFIX}/share/detox
	${INSTALL_DATA} ${WRKBUILD}/unicode.tbl ${PREFIX}/share/detox

.include <bsd.port.mk>
