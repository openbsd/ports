V =		15.1.05
COMMENT =	free Unicode font from the GNU project
DISTNAME =	unifont-${V}
DISTFILES =	${DISTNAME}.otf \
		unifont_csur-${V}.otf \
		unifont_jp-${V}.otf \
		unifont_upper-${V}.otf
CATEGORIES =	fonts

HOMEPAGE =	https://unifoundry.com/unifont/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Dual licensed:
# SIL OFL 1.1 or
# GPLv2+ with font embedding in documents exception
PERMIT_PACKAGE =	Yes

SITES =		https://unifoundry.com/pub/unifont/unifont-${V}/font-builds/

NO_BUILD =	Yes

NO_TEST =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/share/fonts/unifont

do-extract:
	cp ${DISTDIR}/unifont-${V}.otf ${WRKDIR}/unifont.otf
	cp ${DISTDIR}/unifont_csur-${V}.otf ${WRKDIR}/unifont_csur.otf
	cp ${DISTDIR}/unifont_jp-${V}.otf ${WRKDIR}/unifont_jp.otf
	cp ${DISTDIR}/unifont_upper-${V}.otf ${WRKDIR}/unifont_upper.otf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIR}/unifont*.otf ${FONTDIR}

.include <bsd.port.mk>
