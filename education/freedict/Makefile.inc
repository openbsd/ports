# see https://freedict.org/freedict-database.json for all dictionaries
DISTNAME =	freedict-${DICT}-${V}.dictd
PKGNAME ?=	${DISTNAME:.dictd=}

CATEGORIES =	education databases

HOMEPAGE ?=	https://freedict.org/

MAINTAINER ?=		Moritz Buhl <mbuhl@openbsd.org>

SITES =		https://download.freedict.org/dictionaries/${DICT}/${V}/

EXTRACT_SUFX ?=		.tar.xz

CONFIGURE_STYLE ?=	none
NO_BUILD ?=		Yes
NO_TEST ?=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/freedict/${DICT}
	${INSTALL_DATA} ${WRKDIR}/${DICT}/* ${PREFIX}/freedict/${DICT}/
