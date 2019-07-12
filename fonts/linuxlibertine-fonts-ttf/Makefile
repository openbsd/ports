# $OpenBSD: Makefile,v 1.5 2019/07/12 20:46:12 sthen Exp $

COMMENT =		high-quality libre fonts (serif, 19th century book type)

DISTNAME =		LinLibertineTTF_${V}_${D}
PKGNAME =		linuxlibertine-fonts-ttf-${V}
V =			5.3.0
D =			2012_07_02
REVISION =		0

CATEGORIES =		fonts

HOMEPAGE =		http://www.linuxlibertine.org/

# GPLv2 / SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=linuxlibertine/}
EXTRACT_SUFX =		.tgz

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =	*

FONTSDIR =	${PREFIX}/share/fonts/linuxlibertine
DOCDIR =	${PREFIX}/share/doc/linuxlibertine-fonts-ttf

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/README ${WRKDIR}/*.txt ${DOCDIR}

.include <bsd.port.mk>
