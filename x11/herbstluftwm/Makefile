# $OpenBSD: Makefile,v 1.15 2019/10/17 20:23:03 rsadowski Exp $

COMMENT =	manual tiling window manager
DISTNAME =	herbstluftwm-0.7.2
CATEGORIES =	x11

HOMEPAGE =	https://herbstluftwm.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xext Xinerama c glib-2.0 intl m pthread ${COMPILER_LIBCXX}

MASTER_SITES =	https://herbstluftwm.org/tarballs/

# c++11
COMPILER =	base-clang ports-gcc

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
		PREFIX="${PREFIX}" \
		XSESSIONSDIR="${PREFIX}/share/applications"

NO_TEST =	Yes

.include <bsd.port.mk>
