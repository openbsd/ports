# $OpenBSD: Makefile,v 1.5 2019/07/12 20:51:23 sthen Exp $

COMMENT =	lightweight WM with an original look and feel
DISTNAME =	uwm-0.2.11
CATEGORIES =	x11
REVISION =	2

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

FAKE_FLAGS =		udedocdir=${PREFIX}/share/doc/uwm \
			udehtmldocdir=${PREFIX}/share/doc/uwm/html

.include <bsd.port.mk>
