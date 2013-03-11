# $OpenBSD: Makefile,v 1.2 2013/03/11 11:06:05 espie Exp $

COMMENT =		high-quality libre fonts (serif, 19th century book type)

DISTNAME =		LinLibertineTTF_${V}_${D}
PKGNAME =		linuxlibertine-fonts-ttf-${V}
V =			5.3.0
D =			2012_07_02

CATEGORIES =		fonts

HOMEPAGE =		http://www.linuxlibertine.org/

# GPLv2 / SIL Open Font License (OFL) 1.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=linuxlibertine/}
EXTRACT_SUFX =		.tgz

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =	*

FONTSDIR =	${PREFIX}/lib/X11/fonts/linuxlibertine
DOCDIR =	${PREFIX}/share/doc/linuxlibertine-fonts-ttf

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/README ${WRKDIR}/*.txt ${DOCDIR}

.include <bsd.port.mk>
