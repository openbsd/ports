COMMENT =	dmenu style notification bar

V =		1.2pl20220125
GH_ACCOUNT =	sboli
GH_PROJECT =	twmn
GH_COMMIT =	58ca77dde5a007ef0edb7c6e2312310adaf68c7d

DISTNAME =	${GH_PROJECT}-${V}

CATEGORIES =	x11

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =	devel/qmake x11/qt5

WANTLIB += ${COMPILER_LIBCXX} GL c m GL Qt5DBus Qt5Core Qt5Gui
WANTLIB += Qt5Network Qt5Widgets boost_program_options boost_system

LIB_DEPENDS =	devel/boost

# qmake generated test target, but twmn doesn't have tests
TEST_TARGET =	check
NO_TEST =	Yes

EXAMPLEDIR =	${PREFIX}/share/examples/twmn

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/*.{sh,py} ${EXAMPLEDIR}

.include <bsd.port.mk>
