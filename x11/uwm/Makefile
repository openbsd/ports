# $OpenBSD: Makefile,v 1.2 2015/08/25 13:18:28 sthen Exp $

COMMENT =	lightweight WM with an original look and feel
DISTNAME =	uwm-0.2.11
CATEGORIES =	x11
REVISION =	0

HOMEPAGE =	http://udeproject.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += ICE SM X11 Xext Xmu Xpm c jpeg

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=udeproject/}

MODULES =	devel/gettext

BUILD_DEPENDS =	devel/bison

LIB_DEPENDS =	graphics/jpeg

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

FAKE_FLAGS =		udedocdir=${PREFIX}/share/doc/uwm \
			udehtmldocdir=${PREFIX}/share/doc/uwm/html

.include <bsd.port.mk>
