# $OpenBSD: Makefile,v 1.32 2020/05/20 14:31:29 bcallah Exp $

COMMENT =	simple, distraction-free writing environment

DISTNAME =	focuswriter-1.7.6
CATEGORIES =	editors
EXTRACT_SUFX =	-src.tar.bz2

HOMEPAGE =	https://gottcode.org/focuswriter/

MASTER_SITES =	${HOMEPAGE}
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES +=	devel/qmake \
		x11/qt5
RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic
LIB_DEPENDS +=	textproc/hunspell \
		x11/qt5/qtmultimedia

WANTLIB +=	${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5Gui
WANTLIB +=	Qt5Multimedia Qt5Network Qt5PrintSupport Qt5Widgets
WANTLIB +=	c hunspell-1.6 m z

NO_TEST =	Yes

post-install:
	mv ${PREFIX}/share/man/man1/focuswriter.1 ${PREFIX}/man/man1
	rm -Rf ${PREFIX}/share/man/

.include <bsd.port.mk>
