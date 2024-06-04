COMMENT =		PDF viewer for X11
DISTNAME =		xpdf-4.05
CATEGORIES =		textproc x11
EPOCH =			0

HOMEPAGE =		https://www.xpdfreader.com/
SITES =			https://dl.xpdfreader.com/

# GPLv2 only or GPLv3 only or both (at our choice)
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets c cups fontconfig freetype m paper png z

MODULES =		devel/cmake \
			x11/qt5

LIB_DEPENDS =		graphics/png \
			print/libpaper

RUN_DEPENDS =		print/ghostscript/gnu-fonts

CONFIGURE_ARGS =	-DOPI_SUPPORT=ON \
			-DXPDFWIDGET_PRINTING=ON \
			-DSYSTEM_XPDFRC=/etc/xpdfrc

# deprecated Qt5 print code fails to build with Qt6
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Qt6Widgets=ON

CXXFLAGS +=		-I${X11BASE}/include \
			-I/usr/local/include
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib \
			-L/usr/local/lib

# other programs conflict with poppler-utils
PROGS =			xpdf pdftopng
ALL_TARGET =		${PROGS}

do-install:
.for prog in ${PROGS}
	${INSTALL_PROGRAM} ${WRKBUILD}/xpdf*/${prog} ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/doc/${prog}.1 ${PREFIX}/man/man1/
.endfor
	${INSTALL_MAN} ${WRKSRC}/doc/xpdfrc.5 ${PREFIX}/man/man5/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xpdf
	${INSTALL_DATA} ${WRKSRC}/doc/sample-xpdfrc \
		${PREFIX}/share/examples/xpdf/xpdfrc

.include <bsd.port.mk>
