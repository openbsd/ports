# $OpenBSD: Makefile,v 1.8 2015/09/19 10:56:11 landry Exp $

COMMENT =	simple, distraction-free writing environment

DISTNAME =	focuswriter-1.5.5-src
PKGNAME =	${DISTNAME:S/-src//}
CATEGORIES =	editors
EXTRACT_SUFX =	.tar.bz2
WRKDIST =	${WRKDIR}/${DISTNAME:S/-src//}

HOMEPAGE =	http://gottcode.org/focuswriter/

MASTER_SITES =	${HOMEPAGE}

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES +=	devel/gettext \
		x11/qt4
RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS +=	textproc/hunspell
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB +=	QtNetwork z QtGui c m pthread stdc++ hunspell-1.3

MAKE_FLAGS +=	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS +=	INSTALL_ROOT=${DESTDIR}

NO_TEST =	Yes

do-configure:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${CONFIGURE_ENV} \
		${LOCALBASE}/bin/qmake4

post-install:
	mv ${PREFIX}/share/man/man1/focuswriter.1 ${PREFIX}/man/man1
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
