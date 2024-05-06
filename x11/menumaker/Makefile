COMMENT =	menu generation utility for X window managers
DISTNAME =	menumaker-0.99.14
CATEGORIES =	x11
REVISION =	2

SITES =		${SITE_SOURCEFORGE:=menumaker/}

HOMEPAGE =	https://menumaker.sourceforge.net/
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/python

CONFIGURE_STYLE = gnu

MAKE_FLAGS =	PYTHON=${MODPY_BIN}

NO_TEST =	Yes

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/share/menumaker

.include <bsd.port.mk>
