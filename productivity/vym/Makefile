# $OpenBSD: Makefile,v 1.31 2020/06/09 07:14:45 jasper Exp $

COMMENT=	generate and manipulate maps of your thoughts

DISTNAME=	vym-2.6.0
CATEGORIES=	productivity x11
REVISION=	2

HOMEPAGE=	http://www.insilmaril.de/vym/

# modified GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=vym/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB += GL Qt5Core Qt5DBus Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Svg Qt5Widgets Qt5Xml c m pthread
WANTLIB += ${COMPILER_LIBCXX}

MODULES=	devel/qmake \
		x11/qt5
MODQMAKE_ARGS=	DEFINES+=VYM_DOCDIR=\\\\\\\"${PREFIX}/share/doc/vym\\\\\\\"

RUN_DEPENDS=	archivers/zip \
		archivers/unzip \
		textproc/libxslt

LIB_DEPENDS=	x11/qt5/qtsvg

PORTHOME=	${WRKDIR}
NO_TEST=	Yes

SHARE_DIRS=	flags flags/freemind icons scripts styles

pre-configure:
	@echo "QMAKE_CXXFLAGS_RELEASE=${CXXFLAGS}" \
		>> ${WRKSRC}/vym.pro
	${SUBST_CMD} ${WRKSRC}/mainwindow.cpp ${WRKSRC}/main.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/vym ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vym/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vym/
	${INSTALL_DATA} ${WRKSRC}/doc/*.pdf ${PREFIX}/share/doc/vym/
	${INSTALL_DATA} ${WRKSRC}/demos/* ${PREFIX}/share/examples/vym/
.for i in ${SHARE_DIRS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/vym/${i}
	find ${WRKSRC}/${i}/ -type f -exec \
		${INSTALL_DATA} {} ${PREFIX}/share/vym/${i} \;
.endfor
	${INSTALL_DATA} ${WRKSRC}/doc/vym.1.gz ${PREFIX}/man/man1
	gunzip -f ${PREFIX}/man/man1/vym.1.gz
	sed -i 's,/usr/share/doc/packages,${TRUEPREFIX}/share/doc,' \
		${PREFIX}/man/man1/vym.1

.include <bsd.port.mk>
