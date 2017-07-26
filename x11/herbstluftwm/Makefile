# $OpenBSD: Makefile,v 1.9 2017/07/26 22:45:33 sthen Exp $

COMMENT =	manual tiling window manager
DISTNAME =	herbstluftwm-0.7.0
CATEGORIES =	x11
REVISION =	0

HOMEPAGE =	http://herbstluftwm.org/

MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xext Xinerama c glib-2.0 intl m pthread ${COMPILER_LIBCXX}

MASTER_SITES =	http://herbstluftwm.org/tarballs/

COMPILER =	gcc

LIB_DEPENDS +=	devel/glib2

RUN_DEPENDS +=	devel/desktop-file-utils \
		shells/bash \
		x11/dzen2,-gadgets

CPPFLAGS +=	-I${LOCALBASE}/include
USE_GMAKE =	Yes
MAKE_FLAGS =	LDFLAGS= VERBOSE= COLOR=0 CC='${CC}' LDXX='${CXX}' CXX='${CXX}'

BASEDIR =	${PREFIX}/share/examples/herbstluftwm
FAKE_FLAGS =	SYSCONFDIR="${BASEDIR}" \
		EXAMPLESDIR="${BASEDIR}" \
		ZSHCOMPLETIONDIR="${BASEDIR}/zsh/functions/Completion/X" \
		MANDIR="${PREFIX}/man" \
		XSESSIONSDIR="${PREFIX}/share/applications"

NO_TEST =	Yes

.include <bsd.port.mk>
