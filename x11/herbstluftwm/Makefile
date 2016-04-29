# $OpenBSD: Makefile,v 1.5 2016/04/29 08:57:52 jca Exp $

COMMENT =	manual tiling window manager
DISTNAME =	herbstluftwm-0.7.0
CATEGORIES =	x11

HOMEPAGE =	http://herbstluftwm.org/

MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xext Xinerama c estdc++ glib-2.0 intl m pthread

MASTER_SITES =	http://herbstluftwm.org/tarballs/

MODULES =	gcc4

MODGCC4_LANGS=	c++
MODGCC4_ARCHS=	*

LIB_DEPENDS +=	devel/glib2

RUN_DEPENDS +=	devel/desktop-file-utils \
		shells/bash \
		x11/dzen2,-gadgets

USE_GMAKE =	Yes
MAKE_FLAGS =	LDFLAGS= VERBOSE= COLOR=0

BASEDIR =	${PREFIX}/share/examples/herbstluftwm
FAKE_FLAGS =	SYSCONFDIR="${BASEDIR}" \
		EXAMPLESDIR="${BASEDIR}" \
		ZSHCOMPLETIONDIR="${BASEDIR}/zsh/functions/Completion/X" \
		MANDIR="${PREFIX}/man" \
		XSESSIONSDIR="${PREFIX}/share/applications"

NO_TEST =	Yes

.include <bsd.port.mk>
