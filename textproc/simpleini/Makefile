COMMENT =	simple API to read and write INI-style configuration files
CATEGORIES =	textproc

GH_ACCOUNT =	brofield
GH_PROJECT =	simpleini
GH_TAGNAME =	v4.22

# MIT
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes

TEST_DEPENDS =	devel/gtest
USE_GMAKE =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/SimpleIni.h ${PREFIX}/include

.include <bsd.port.mk>
