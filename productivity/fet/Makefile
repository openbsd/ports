COMMENT=		automatically create timetables

DISTNAME=		fet-5.42.3
CATEGORIES=		productivity x11

HOMEPAGE=		https://www.lalescu.ro/liviu/fet/

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets c m

MASTER_SITES=		${HOMEPAGE}/download/ \
			https://timetabling.de/download/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/qmake \
			x11/qt5

PORTHOME=		${WRKDIR}

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/fet ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fet
	${INSTALL_DATA} ${WRKSRC}/doc/algorithm/*.txt \
		${PREFIX}/share/doc/fet
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fet
	cd ${WRKSRC}/examples/ && umask 022 && pax -rw . \
		${PREFIX}/share/examples/fet

.include <bsd.port.mk>
