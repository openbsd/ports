COMMENT=	generate and manipulate maps of your thoughts

GH_ACCOUNT =	insilmaril
GH_PROJECT =	vym
GH_TAGNAME =	v2.9.26

CATEGORIES=	productivity x11

HOMEPAGE=	https://www.insilmaril.de/vym/

# modified GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Script Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += c m

MODULES=	devel/cmake \
		x11/qt5

RUN_DEPENDS=	x11/gtk+4,-guic \
		devel/desktop-file-utils \
		misc/shared-mime-info \
		archivers/zip \
		archivers/unzip \
		textproc/libxslt

LIB_DEPENDS=	x11/qt5/qtsvg \
		x11/qt5/qtscript

NO_TEST=	Yes

post-patch:
	${SUBST_CMD} ${WRKSRC}/src/main.cpp

.include <bsd.port.mk>
