# $OpenBSD: Makefile,v 1.1.1.1 2012/10/12 16:24:07 rpe Exp $

COMMENT =		high-quality libre fonts (serif, 19th century book type)

DISTNAME =		LinLibertineTTF_${V}_${D}
PKGNAME =		linuxlibertine-fonts-ttf-${V}
V =			5.3.0
D =			2012_07_02

CATEGORIES =		fonts

HOMEPAGE =		http://www.linuxlibertine.org/

# GPLv2 / SIL Open Font License (OFL) 1.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=linuxlibertine/}
EXTRACT_SUFX =		.tgz

NO_BUILD =		Yes
NO_REGRESS =		Yes

PKG_ARCH =	*

FONTSDIR =	${PREFIX}/lib/X11/fonts/linuxlibertine
DOCDIR =	${PREFIX}/share/doc/linuxlibertine-fonts-ttf

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/README ${WRKDIR}/*.txt ${DOCDIR}

.include <bsd.port.mk>
