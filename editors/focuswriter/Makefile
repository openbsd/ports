# $OpenBSD: Makefile,v 1.2 2013/03/11 11:02:49 espie Exp $

COMMENT =	simple, distraction-free writing environment

DISTNAME =	focuswriter-1.3.90
CATEGORIES =	editors
EXTRACT_SUFX =	-src.tar.bz2

HOMEPAGE =	http://gottcode.org/focuswriter/

MASTER_SITES =	${HOMEPAGE}

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES +=	x11/qt4
RUN_DEPENDS +=	devel/desktop-file-utils x11/gtk+2,-guic
LIB_DEPENDS +=	archivers/libzip textproc/enchant
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB +=	QtNetwork enchant glib-2.0 gmodule-2.0 iconv intl z
WANTLIB +=	QtGui c m pthread stdc++ zip

MAKE_FLAGS +=	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS +=	INSTALL_ROOT=${DESTDIR}

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/qmake4

.include <bsd.port.mk>
