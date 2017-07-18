# $OpenBSD: Makefile.inc,v 1.13 2017/07/18 04:12:11 zhuk Exp $

CATEGORIES =	games
PKGNAME ?=	${DISTNAME:S/-src//}
EXTRACT_SUFX ?=	.tar.bz2

HOMEPAGE ?=	http://gottcode.org/${GAME}/
MASTER_SITES ?=	${HOMEPAGE}

MAINTAINER ?=	Brian Callahan <bcallah@devio.us>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST ?=	${WRKDIR}/${DISTNAME:S/-src//}
MODULES +=	devel/qmake x11/qt5
MODGCC4_ARCHS =	i386 amd64 powerpc sparc64
WANTLIB +=	GL Qt5Core Qt5Gui Qt5Widgets
WANTLIB +=	c m pthread
RUN_DEPENDS +=	devel/desktop-file-utils x11/gtk+3,-guic

MAKE_FLAGS +=	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS}"

# XXX qmake 5.9 regression? - translations are not installed
SEPARATE_BUILD ?=	No

NO_TEST =	Yes
