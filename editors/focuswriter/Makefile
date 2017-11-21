# $OpenBSD: Makefile,v 1.15 2017/11/21 00:13:00 naddy Exp $

COMMENT =	simple, distraction-free writing environment

DISTNAME =	focuswriter-1.5.5-src
PKGNAME =	${DISTNAME:S/-src//}
CATEGORIES =	editors
EXTRACT_SUFX =	.tar.bz2
WRKDIST =	${WRKDIR}/${DISTNAME:S/-src//}
REVISION =	2
HOMEPAGE =	http://gottcode.org/focuswriter/

MASTER_SITES =	${HOMEPAGE}

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES +=	devel/qmake \
		x11/qt4
RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS +=	textproc/hunspell
WANTLIB +=	ICE SM X11 Xext Xi Xinerama Xrender fontconfig freetype
WANTLIB +=	QtNetwork z QtGui c m pthread ${COMPILER_LIBCXX} hunspell-1.6
WANTLIB +=	iconv intl

NO_TEST =	Yes

post-install:
	mv ${PREFIX}/share/man/man1/focuswriter.1 ${PREFIX}/man/man1
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
