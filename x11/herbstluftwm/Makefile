# $OpenBSD: Makefile,v 1.3 2014/08/12 01:31:39 zhuk Exp $

COMMENT =	manual tiling window manager
DISTNAME =	herbstluftwm-0.6.2
CATEGORIES =	x11
REVISION =	0

HOMEPAGE =	http://herbstluftwm.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xext Xinerama c glib-2.0 pthread

MASTER_SITES =	http://herbstluftwm.org/tarballs/

MODULES =	devel/gettext

LIB_DEPENDS =	devel/glib2

RUN_DEPENDS =	devel/desktop-file-utils \
		shells/bash \
		x11/dzen2,-gadgets

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" LDFLAGS= VERBOSE= COLOR=0

BASEDIR =	${PREFIX}/share/examples/herbstluftwm
FAKE_FLAGS =	SYSCONFDIR="${BASEDIR}" \
		EXAMPLESDIR="${BASEDIR}" \
		ZSHCOMPLETIONDIR="${BASEDIR}/zsh/functions/Completion/X" \
		MANDIR="${PREFIX}/man" \
		XSESSIONSDIR="${PREFIX}/share/applications"

NO_TEST =	Yes

post-patch:
	perl -pi -e "s,^#!/bin/bash,#!${LOCALBASE}/bin/bash," \
		`grep -Rl /bin/bash ${WRKSRC}/*`

.include <bsd.port.mk>
