# $OpenBSD: Makefile,v 1.11 2020/07/12 00:35:59 jca Exp $

COMMENT =		Debian Almquist shell, POSIX-compliant

DISTNAME =		dash-0.5.11.1

CATEGORIES =		shells

HOMEPAGE =		http://gondor.apana.org.au/~herbert/dash/

MAINTAINER =		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# 3-clause BSD
# (source contains GPLv2 tool used during build only, see COPYING)
PERMIT_PACKAGE =	Yes

WANTLIB =		c curses edit

MASTER_SITES =		${HOMEPAGE:=files/}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

SEPARATE_BUILD =	flavored
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--enable-fnmatch --enable-glob --with-libedit
CONFIGURE_ENV +=	LIBS="-ledit -lcurses"

FLAVORS =		static
FLAVOR ?=

.if ${FLAVOR:Mstatic}
# --enable-static will fail because it also brings --Wl,--fatal-warnings
CONFIGURE_ENV +=	LDFLAGS="${STATIC}"
.endif

.include <bsd.port.mk>
