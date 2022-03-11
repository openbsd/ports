COMMENT=	interactive electronics designing software

GH_ACCOUNT=	fritzing
GH_PROJECT=	fritzing-app
GH_TAGNAME=	0.9.2b

REVISION=	6

DISTNAME=	fritzing-${GH_TAGNAME}
CATEGORIES=	cad

DISTFILES=	${DISTNAME}.tar.gz \
		fritzing-parts-${GH_TAGNAME}${EXTRACT_SUFX}:0

HOMEPAGE=	https://fritzing.org/

MASTER_SITES0=	https://github.com/fritzing/fritzing-parts/archive/${GH_TAGNAME}/

# Code: GPLv3+
# Rest: CreativeCommons:BY-SA
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5PrintSupport Qt5SerialPort Qt5Sql Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml c m z

MODULES=	devel/qmake x11/qt5
NO_TEST=	Yes

LIB_DEPENDS=	x11/qt5/qtserialport \
		x11/qt5/qtsvg
BUILD_DEPENDS=	devel/boost
RUN_DEPENDS=	devel/desktop-file-utils

post-extract:
	mv ${WRKDIR}/fritzing-parts-${GH_TAGNAME}/* ${WRKSRC}/parts

pre-configure:
	${SUBST_CMD} ${WRKSRC}/phoenix.pro ${WRKSRC}/src/fapplication.cpp

# -DLINUX_32 gets added to CFLAGS, though it's only used to figure out
# if there is a newer version of the 32-bit Linux binary on the upstream
# webpage. So it's safe to set it on all arches (for now).

do-install:
	${SUBST_PROGRAM} ${FILESDIR}/fritzing.sh ${PREFIX}/bin/fritzing
	${INSTALL_PROGRAM} ${WRKBUILD}/Fritzing ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/fritzing/
	cd ${WRKSRC}; tar cf - bins help parts pdb resources sketches tools translations | \
		tar xf - -C ${PREFIX}/share/fritzing/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_DATA} ${FILESDIR}/fritzing.desktop \
		${PREFIX}/share/applications/fritzing.desktop

.include <bsd.port.mk>
