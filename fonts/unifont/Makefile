# $OpenBSD: Makefile,v 1.8 2020/07/20 14:14:59 bcallah Exp $

V =		13.0.03
COMMENT =	free Unicode font from the GNU project
DISTNAME =	unifont-${V}
REVISION =	0
DISTFILES =	${DISTNAME}.ttf \
		unifont_csur-${V}.ttf \
		unifont_jp-${V}.ttf \
		unifont_upper-${V}.ttf
CATEGORIES =	fonts

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
	cp ${DISTDIR}/unifont-${V}.ttf ${WRKDIR}/unifont.ttf
	cp ${DISTDIR}/unifont_csur-${V}.ttf ${WRKDIR}/unifont_csur.ttf
	cp ${DISTDIR}/unifont_jp-${V}.ttf ${WRKDIR}/unifont_jp.ttf
	cp ${DISTDIR}/unifont_upper-${V}.ttf ${WRKDIR}/unifont_upper.ttf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/unifont*.ttf ${FONTDIR}

.include <bsd.port.mk>
