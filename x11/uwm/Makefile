# $OpenBSD: Makefile,v 1.1.1.1 2013/05/20 06:38:39 bcallah Exp $

COMMENT =	lightweight WM with an original look and feel
DISTNAME =	uwm-0.2.11
CATEGORIES =	x11

HOMEPAGE =	http://udeproject.sourceforge.net/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

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
