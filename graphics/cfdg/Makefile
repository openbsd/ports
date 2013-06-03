# $OpenBSD: Makefile,v 1.7 2013/06/03 02:46:57 naddy Exp $

COMMENT =	Context Free Design Grammar

VERSION =	2.2.2
DISTNAME =	ContextFreeSource${VERSION}
PKGNAME =	cfdg-${VERSION}

CATEGORIES =	graphics

HOMEPAGE =	http://www.contextfreeart.org/

MAINTAINER =	jared r r spiegel <jrrs@ice-nine.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m png stdc++ z
LIB_DEPENDS =	graphics/png

MASTER_SITES =	http://www.contextfreeart.org/download/
EXTRACT_SUFX =	.tgz

USE_GMAKE =	Yes

# ????
WRKDIST =	${WRKDIR}/${DISTNAME}.tgz/

EXAMPLEDIR =	${PREFIX}/share/examples/cfdg

MAKE_ENV +=	CPPFLAGS="${CFLAGS} -I$(LOCALBASE)/include"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/cfdg ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/input
	${INSTALL_DATA} ${WRKSRC}/README.txt ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/input/* ${EXAMPLEDIR}/input

NO_TEST =	Yes

.include <bsd.port.mk>
