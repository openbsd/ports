# $OpenBSD: Makefile,v 1.5 2020/06/09 05:30:41 bentley Exp $

V =		13.0.02
COMMENT =	free Unicode font from the GNU project
DISTNAME =	unifont-${V}
DISTFILES =	${DISTNAME}.ttf
CATEGORIES =	fonts
REVISION =	0

HOMEPAGE =	https://unifoundry.com/unifont/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
# with font embedding in documents exception
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://unifoundry.com/pub/unifont/unifont-${V}/font-builds/

NO_BUILD =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/share/fonts/unifont

do-extract:
	cp ${DISTDIR}/${DISTFILES} ${WRKDIR}/unifont.ttf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/unifont.ttf ${FONTDIR}

.include <bsd.port.mk>
