# $OpenBSD: Makefile,v 1.1.1.1 2009/06/01 06:51:51 benoit Exp $

COMMENT =		password cracker based on rainbow tables

DISTNAME =		ophcrack-3.2.1
CATEGORIES =		security

HOMEPAGE =		http://ophcrack.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m pthread ssl crypto

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ophcrack/}

EXTRACT_SUFX =		.tar.bz2

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

AUTOCONF_VERSION =	2.59

FLAVORS =		gui
FLAVOR ?=

.if ${FLAVOR:L:Mgui}
WANTLIB +=		ICE SM X11 Xext Xi Xinerama Xrender expat fontconfig
WANTLIB +=		freetype glib-2.0 gobject-2.0 gthread-2.0 png
WANTLIB +=		stdc++ z
MODULES +=		x11/qt4 \
			devel/gettext
LIB_DEPENDS +=		QtGui.>=8,QtCore.>=7::x11/qt4 \
			qwt::x11/qwt
CONFIGURE_ARGS +=	--enable-gui \
			--with-libqt4=${MODQT_LIBDIR} \
			--with-libqwt=${LOCALBASE} \
			--enable-graph
CONFIGURE_ENV +=	QTDIR="${MODQT4_QTDIR}" \
			CPPFLAGS="${CPPFLAGS} -I${X11BASE}/include"
USE_X11 =		Yes
.else
CONFIGURE_ARGS =	--disable-gui --disable-graph
.endif

NO_REGRESS =		Yes

.include <bsd.port.mk>
