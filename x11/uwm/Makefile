COMMENT =	lightweight WM with an original look and feel
DISTNAME =	uwm-0.2.11a
CATEGORIES =	x11

HOMEPAGE =	http://udeproject.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB += ICE SM X11 Xext Xmu Xpm c iconv intl jpeg

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=udeproject/}

BUILD_DEPENDS =	devel/bison

LIB_DEPENDS =	devel/gettext,-runtime \
		graphics/jpeg

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

FAKE_FLAGS =		udedocdir=${PREFIX}/share/doc/uwm

.include <bsd.port.mk>
