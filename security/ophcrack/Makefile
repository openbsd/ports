# $OpenBSD: Makefile,v 1.16 2019/07/12 20:49:06 sthen Exp $

COMMENT =		password cracker based on rainbow tables

DISTNAME =		ophcrack-3.6.1
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
WANTLIB +=		ICE SM X11 Xext Xi Xinerama Xrender fontconfig
WANTLIB +=		freetype ${COMPILER_LIBCXX} QtGui>=8 QtCore>=7 qwt

MODULES +=		x11/qt4

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

NO_TEST =		Yes

.include <bsd.port.mk>
