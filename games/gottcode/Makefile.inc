# $OpenBSD: Makefile.inc,v 1.17 2019/07/12 20:46:19 sthen Exp $

CATEGORIES =	games
PKGNAME ?=	${DISTNAME:S/-src//}
EXTRACT_SUFX ?=	.tar.bz2

HOMEPAGE ?=	https://gottcode.org/${GAME}/
MASTER_SITES ?=	${HOMEPAGE}

MAINTAINER ?=	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WRKDIST ?=	${WRKDIR}/${DISTNAME:S/-src//}
MODULES +=	devel/qmake x11/qt5
MODGCC4_ARCHS =	i386 amd64 powerpc sparc64
WANTLIB +=	GL Qt5Core Qt5Gui Qt5Widgets
WANTLIB +=	c m pthread ${COMPILER_LIBCXX}
RUN_DEPENDS +=	devel/desktop-file-utils x11/gtk+3,-guic

MAKE_FLAGS +=	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS}"

pre-configure:
	sed -i.qmfix -e 's/\(qm\.files =\).*/\1 $$$$replace(TRANSLATIONS, .ts, .qm)/' \
		${WRKSRC}/*.pro

NO_TEST =	Yes
