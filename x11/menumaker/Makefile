# $OpenBSD: Makefile,v 1.4 2019/07/12 20:51:17 sthen Exp $

COMMENT =	menu generation utility for X window managers
DISTNAME =	menumaker-0.99.10
CATEGORIES =	x11
REVISION =	0

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=menumaker/}

HOMEPAGE =	http://menumaker.sourceforge.net/
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.t28.net>

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
