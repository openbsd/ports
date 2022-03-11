COMMENT =	Qt/C++ library wrapper for the GPodder

V =		1.1.0
PKGNAME =	libmygpo-qt-$V
DISTNAME =	libmygpo-qt.$V

CATEGORIES =	audio devel net

SHARED_LIBS =  mygpo-qt5       0.0

# LGPLv2.1+
PERMIT_PACKAGE = Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network m

MODULES =	devel/cmake \
		x11/qt5

MASTER_SITES =	https://stefan.derkits.at/files/libmygpo-qt/

# picks up doxygen during configure but does not really use it
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mygpo-qt
	cd ${WRKSRC}/example; pax -vrw -s '@.*/\..*@@' . \
		${PREFIX}/share/examples/mygpo-qt

.include <bsd.port.mk>
