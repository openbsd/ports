COMMENT =		PDF viewer for X11
DISTNAME =		xpdf-4.05
CATEGORIES =		textproc x11
EPOCH =			0
REVISION =		1

HOMEPAGE =		https://www.xpdfreader.com/
SITES =			https://dl.xpdfreader.com/

# GPLv2 only or GPLv3 only or both (at our choice)
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Concurrent Qt6Core Qt6Gui
WANTLIB += Qt6Network Qt6PrintSupport Qt6Widgets c cups fontconfig
WANTLIB += freetype m paper png z

MODULES =		devel/cmake \
			x11/qt6

LIB_DEPENDS =		graphics/png \
			print/libpaper

RUN_DEPENDS =		print/ghostscript/gnu-fonts

CONFIGURE_ARGS =	-DOPI_SUPPORT=ON \
			-DXPDFWIDGET_PRINTING=ON \
			-DSYSTEM_XPDFRC=/etc/xpdfrc

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
