# $OpenBSD: Makefile,v 1.6 2020/07/03 21:13:23 sthen Exp $

COMMENT =	menu generation utility for X window managers
DISTNAME =	menumaker-0.99.11
CATEGORIES =	x11
REVISION =	0

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=menumaker/}

HOMEPAGE =	http://menumaker.sourceforge.net/
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

CONFIGURE_STYLE =	gnu

MAKE_FLAGS =		PYTHON=${MODPY_BIN}

NO_TEST =		Yes

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/share/menumaker

.include <bsd.port.mk>
