# $OpenBSD: Makefile,v 1.15 2013/11/25 21:48:53 landry Exp $

COMMENT =	html help viewer
BROKEN =	doesnt work with newer xulrunner

DISTNAME =	chmsee-2.0.2

CATEGORIES =	textproc x11

HOMEPAGE =	https://code.google.com/p/chmsee/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://chmsee.googlecode.com/files/

WRKSRC=${WRKDIST}/src
MODULES =	lang/python gcc4 lang/clang

MODGCC4_ARCHS =		powerpc sparc64
MODGCC4_LANGS =		c c++
MODCLANG_ARCHS =	amd64 i386
MODCLANG_LANGS =	c c++

MAKE_FILE =	Makefile.netbsd
USE_GMAKE = yes
CONFIGURE_STYLE = none
MODPY_RUNDEP =	no
 
BUILD_DEPENDS =	devel/xulrunner/24,-devel \
		textproc/intltool

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xulrunner/24 \
		x11/gtk+2,-guic
LIB_DEPENDS =	devel/nspr \
		devel/chmlib
WANTLIB += chm m nspr4 plc4 plds4 pthread stdc++

NO_TEST =	Yes

TARGETDIR =	${PREFIX}/lib/chmsee
pre-configure:
	${SUBST_CMD} ${WRKSRC}/${MAKE_FILE}

do-install:
	${INSTALL_DATA_DIR} ${TARGETDIR}
	${INSTALL_DATA_DIR} ${TARGETDIR}/data
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/../application.ini ${TARGETDIR}
	${INSTALL_DATA} ${WRKSRC}/../data/*.png ${TARGETDIR}/data/
	${INSTALL_DATA} ${WRKSRC}/../data/chmsee.desktop.in ${PREFIX}/share/applications/chmsee.desktop
	cp -pR ${WRKSRC}/../{components,chrome,chrome.manifest,about.md,defaults} ${TARGETDIR}
	cp -pR ${WRKSRC}/../data/icons ${PREFIX}/share/
	chown -R ${SHAREOWN}:${SHAREGRP} ${TARGETDIR} ${PREFIX}/share/
	echo "#!/bin/sh\n\n${LOCALBASE}/bin/xulrunner ${TRUEPREFIX}/lib/chmsee/application.ini" > ${PREFIX}/bin/chmsee
	chmod +x ${PREFIX}/bin/chmsee

.include <bsd.port.mk>
