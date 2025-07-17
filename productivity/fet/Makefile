COMMENT=		automatically create timetables

DISTNAME=		fet-7.2.5
CATEGORIES=		productivity x11

HOMEPAGE=		https://www.lalescu.ro/liviu/fet/

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6PrintSupport
WANTLIB += Qt6Widgets c m

SITES=			https://lalescu.ro/liviu/fet/download/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/qmake \
			x11/qt6

CONFIGURE_ENV +=	LC_ALL=en_US.UTF-8
MAKE_ENV +=		LC_ALL=en_US.UTF-8

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
