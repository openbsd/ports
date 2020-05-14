# $OpenBSD: Makefile,v 1.1.1.1 2020/05/14 20:34:19 ian Exp $ 

COMMENT =	CrossFire crossword constructor
CATEGORIES =	textproc games

HOMEPAGE =	http://beekeeperlabs.com/crossfire
MASTER_SITES =	http://beekeeperlabs.com/download/
V =				1.3.1
PKGNAME =	crossfire-${V}
DISTNAME =	CrossFire-${V:S/./_/g}-linux
EXTRACT_SUFX =	.tgz
WRKDIST =	${WRKDIR}/CrossFire

MAINTAINER=	Ian Darwin <ian@openbsd.org>

MODULES =	java
MODJAVA_VER =	1.8+

# "Linux" version is distributed as a binary jar
PKG_ARCH =	*
NO_BUILD =	Yes
NO_TEST =	Yes

# Program is copyright; Princeton Wordnet is BSD
PERMIT_PACKAGE=	No
PERMIT_DISTFILES= No

do-install:
	${INSTALL_PROGRAM} ${FILESDIR}/crossfire.sh ${PREFIX}/bin/crossfire
	${SUBST_CMD} ${PREFIX}/bin/crossfire
	${INSTALL_DATA_DIR} ${PREFIX}/lib/crossfire
	${INSTALL_DATA} ${WRKDIST}/CrossFire.jar ${PREFIX}/lib/crossfire/
	${INSTALL_DATA} ${WRKDIST}/default.dict ${PREFIX}/lib/crossfire/
	${INSTALL_MAN} ${FILESDIR}/crossfire.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/crossfire
	${INSTALL_DATA} ${WRKDIST}/examples/* ${PREFIX}/share/examples/crossfire

.include <bsd.port.mk>
