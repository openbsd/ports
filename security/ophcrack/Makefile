# $OpenBSD: Makefile,v 1.8 2013/02/09 14:49:52 sthen Exp $

COMMENT =		password cracker based on rainbow tables

DISTNAME =		ophcrack-3.4.0
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

.if ${FLAVOR:Mgui}
WANTLIB +=		ICE SM X11 Xext Xi Xinerama Xrender expat fontconfig
WANTLIB +=		freetype glib-2.0 gobject-2.0 gthread-2.0 png
WANTLIB +=		pthread-stubs stdc++ xcb z
MODULES +=		x11/qt4 \
			devel/gettext
WANTLIB +=		QtGui>=8 QtCore>=7 qwt
LIB_DEPENDS +=		x11/qt4 \
			x11/qwt
CONFIGURE_ARGS +=	--enable-gui \
			--with-libqt4=${MODQT_LIBDIR} \
			--with-libqwt=${LOCALBASE} \
			--enable-graph
CONFIGURE_ENV +=	QTDIR="${MODQT4_QTDIR}" \
			CPPFLAGS="${CPPFLAGS} -I${X11BASE}/include"
.else
CONFIGURE_ARGS =	--disable-gui --disable-graph
.endif

NO_REGRESS =		Yes

.include <bsd.port.mk>
