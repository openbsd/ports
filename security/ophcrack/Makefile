COMMENT =		password cracker based on rainbow tables

DISTNAME =		ophcrack-3.8.0
REVISION =		0
CATEGORIES =		security

HOMEPAGE =		http://ophcrack.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c m pthread ssl crypto expat

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ophcrack/}

EXTRACT_SUFX =		.tar.bz2

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

AUTOCONF_VERSION =	2.59

FLAVORS =		gui
FLAVOR ?=

.if ${FLAVOR:Mgui}
WANTLIB +=		${COMPILER_LIBCXX} GL Qt5Charts Qt5Core Qt5Gui Qt5Widgets

MODULES +=		x11/qt5

LIB_DEPENDS +=		x11/qt5/qtcharts

CONFIGURE_ARGS +=	--enable-gui

CONFIGURE_ENV +=	QTDIR="${MODQT5_QTDIR}" \
			CPPFLAGS="${CPPFLAGS} -I${X11BASE}/include"
.else
CONFIGURE_ARGS =	--disable-gui
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
