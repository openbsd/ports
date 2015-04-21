# $OpenBSD: Makefile,v 1.7 2015/04/21 18:40:20 sthen Exp $

COMMENT =	music collection manager and player
DISTNAME =	gogglesmm-0.12.7
EXTRACT_SUFX =	.tar.xz
REVISION =	4
CATEGORIES =	audio x11

HOMEPAGE =	https://code.google.com/p/gogglesmm/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += FOX-1.6 GL GLU X11 c dbus-1 expat m pthread sqlite3 stdc++
WANTLIB += tag xine

MASTER_SITES =	https://gogglesmm.googlecode.com/files/

MODULES =	devel/gettext

LIB_DEPENDS =	audio/taglib \
		devel/fox \
		multimedia/xine-lib \
		x11/dbus

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--with-md5=internal
CONFIGURE_STYLE =	simple
USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
