# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:57 sthen Exp $

COMMENT =		convert images to cross stitch patterns

GH_ACCOUNT =		kleintom
GH_PROJECT =		cstitch
GH_TAGNAME =		0.9.8
REVISION =		3

DISTFILES=		${DISTNAME}.tar.gz ${DISTNAME}-icons{icons}.zip:0

MASTER_SITES0 =		http://sourceforge.net/projects/cstitch/files/Cstitch/Icons/

MODULES =		devel/qmake lang/python x11/qt5
MODPY_RUNDEP =		No

CATEGORIES =		graphics

HOMEPAGE =		http://cstitch.sourceforge.net/

MAINTAINER =		Adam Wolk <awolk@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets Qt5Xml
WANTLIB += c m pthread
WANTLIB += ${COMPILER_LIBCXX}

RUN_DEPENDS =		devel/desktop-file-utils x11/gtk+3,-guic

WRKDIST = ${WRKDIR}/Cstitch-${GH_TAGNAME}
EXTRACT_CASES += *icons.zip) \
	${UNZIP} -qo ${FULLDISTDIR}/$$archive -d \
	${WRKDIST}/icons/;;

pre-configure:
	cd ${WRKDIST} && \
		${MODPY_BIN} doc/createDocs.py && \
		${MODQT_QMAKE} -project && \
		${MODPY_BIN} progen.py

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/Cstitch-${GH_TAGNAME} \
		${PREFIX}/bin/cstitch
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/icons/cstitch.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/cstitch.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/cstitch/locale/
	${INSTALL_DATA} ${WRKSRC}/translations/*.qm \
		${PREFIX}/share/cstitch/locale/

.include <bsd.port.mk>
